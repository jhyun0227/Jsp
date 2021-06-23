package ch13.service;

import java.io.*;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import ch13.dao.*;

public class PdsItemService {
	public int insert(HttpServletRequest request) {
		int result = 0;
		// jsp : application.getRealPath("/upload");
		String real = request.getSession().getServletContext().getRealPath("/upload");
		int maxSize = 1024 * 1024 * 10; // 10M
		try {
			// 																				이름이 중복되면 다른 이름으로 바꿔라
			MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
			String fileName = mr.getFilesystemName("file");
			String description = mr.getParameter("description");
			File file = new File(real + "/" + fileName);
			int fileSize = (int) file.length();
			// 실제 파일과 저장되는 파일 이름을 바꾸고 싶을 때 사용
			file.renameTo(new File(real + "/k_" + fileName));
			PdsItem pi = new PdsItem();
			pi.setFileName("k_"+fileName);
			pi.setFileSize(fileSize);
			pi.setDescription(description);
			PdsItemDao pid = PdsItemDao.getInstance();
			result = pid.insert(pi);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	public List<PdsItem> list() {
		PdsItemDao pid = PdsItemDao.getInstance();
		List<PdsItem> list = pid.list();
		return list;
	}
}

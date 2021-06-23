package ch14.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.dao.BoardDao;

public class Delete implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {}
		
		String pageNum = request.getParameter("pageNum");
		int num = Integer.parseInt(request.getParameter("num"));
		String password = request.getParameter("password");
		BoardDao bd = BoardDao.getInstance();
		int result = bd.delete(num, password);
		
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		
		return "a5_delete.jsp";
	}

}

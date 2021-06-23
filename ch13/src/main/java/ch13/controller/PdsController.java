package ch13.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch13.dao.PdsItem;
import ch13.service.PdsItemService;
// 확장자가 action인 경우에는 이 컨트롤러로 처리하겠다.
// url : http://localhost:8080/ch13/pds/a1_fileUpload.action
@WebServlet("*.action")
public class PdsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getContextPath(); // /ch13(프로젝트 명)
//		System.out.println("path = " + path);  
		String uri = request.getRequestURI(); // /ch13/pds/a1_fileUpload.action
//		System.out.println("uri = " + uri);
		String command = uri.substring(path.length() + 1); // pds/a1_fileUpload.action
//		System.out.println("command = " + command);
		String pgm = "";
		if (command.equals("pds/a1_fileUpload.action")) {
			PdsItemService pis = new PdsItemService();
			int result = pis.insert(request);
			request.setAttribute("result", result);
			pgm = "a1_uploadResult.jsp";
		} else if (command.equals("pds/list.action")) {
			PdsItemService pis = new PdsItemService();
			List<PdsItem> list = pis.list();
			request.setAttribute("list", list);
			pgm = "a2_list.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(pgm);
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

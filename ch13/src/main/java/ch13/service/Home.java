package ch13.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Home implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String[] img = {"ioi", "jung", "produce", "twice"};
		int num = (int)(Math.random()*4);
		request.setAttribute("img", "images/" + img[num] + ".jpg");
		return "a7_home.jsp";
	}
}

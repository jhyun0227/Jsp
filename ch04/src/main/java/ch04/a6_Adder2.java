package ch04;
import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/a6_Adder2")
public class a6_Adder2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");;
		PrintWriter out  = response.getWriter();
		out.println("<html><body>");
		try {
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
			out.printf("%d + %d = %d",num1,num2,num1+num2);
		}catch (Exception e) {
			request.setAttribute("err", e.getMessage()); // err 어트리뷰를 설정
			RequestDispatcher rd = request.getRequestDispatcher("a6_except2.jsp"); // 예외 발생 시 a6_except2.jsp에 예외를 보냄
			rd.forward(request, response);
		}
		out.println("</body></html>");
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
package ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/b1_fibboacci")
public class b1_fibboacci extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private BigInteger arr[]; // long보다 더 큰 정수를 담는 클래스
	
	@Override
	public void init() throws ServletException { // doGet(또는 doPost)보다 먼저 실행하는 메서드
		arr = new BigInteger[100];
		arr[0] = new BigInteger("1"); 
		arr[1] = new BigInteger("1");
		for (int i = 2; i < arr.length; i++) {
			arr[i] = arr[i-2].add(arr[i-1]); // BigInteger 클래스의 add메소드 + 부호를 사용하지 않는다.
		}
 	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		if (num > 100) {
			num = 100;
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2>피보나찌 수열</h2>");
		for (int i = 0; i < num; i++) {
			out.println(arr[i] + "<br>");
		}
		out.println("</body></html>");
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package ch04;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/a6_Adder")
public class a6_Adder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8"); // 한글 출력할때 글씨 안깨지게
		PrintWriter out = response.getWriter(); // 요청받은 데이터를 응답할때 사용할 객체
		out.println("<html><body>");
		try { // 예외 처리
		int num1 = Integer.parseInt(request.getParameter("num1")); // name값 num1을 정수 변수에 저장
		int num2 = Integer.parseInt(request.getParameter("num2")); // name값 num2를 정수 변수에 저장
		int result = num1 + num2;
		out.printf("%d + %d = %d<p>",num1, num2, result);
		} catch (NumberFormatException e) { // num값이 숫자가 아닐때 예외 발생
			out.println("숫자가 아님");
		}
		out.println("</body></html>");
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
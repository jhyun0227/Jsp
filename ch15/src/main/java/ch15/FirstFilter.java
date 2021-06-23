package ch15;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// /*는 모든 앱을 실행 할때 이 클래스를 실행한다.
@WebFilter("/FirstFilter")
public class FirstFilter implements Filter {
	// 기본 생성자
    public FirstFilter() { }

    // WAS 종료될 때 실행
	public void destroy() {
		
	}

	// 실제 요청된 작업 처리
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("필터가 시작 되었습니다.");
		chain.doFilter(request, response);
		System.out.println("필터가 종료 되었습니다.");
	}

	// doFilter 메소드를 실행하기전에 먼저 필요한 작업을 실행하는 메소드
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

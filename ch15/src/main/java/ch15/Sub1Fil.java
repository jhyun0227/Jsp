package ch15;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// sub1 폴더에 있는 web프로그램 실행할 때 작동
/*@WebFilter("/sub1/*")*/
@WebFilter(urlPatterns = {"/sub1/*","/sub2/*"}) // urlPatterns를 이용하면 다양한 폴더와 파일엔 적용이 가능하다.
public class Sub1Fil implements Filter {
    public Sub1Fil() { }

	public void destroy() { }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("sub1에서 사용전");
		chain.doFilter(request, response);
		System.out.println("sub1에서 사용후");
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

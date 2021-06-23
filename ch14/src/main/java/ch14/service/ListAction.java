package ch14.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.dao.Board;
import ch14.dao.BoardDao;

public class ListAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		final int ROW_PER_PAGE = 10;     // 한페이지에 10개씩
		final int PAGE_PER_BLOCK = 10;   // 한블럭에 10페이지
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		BoardDao bd = BoardDao.getInstance();
		int total = bd.getTotal();  
		// 시작번호	(페이지번호 - 1) * 페이지당 갯수+ 1				
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		// 끝번호 	시작번호 + 페이지당개수 - 1			
		int endRow = startRow + ROW_PER_PAGE - 1;
		List<Board> list = bd.list(startRow, endRow);
		// 번호를 보기 좋게 정열
		int number = total - startRow + 1;
		int totalPage = (int)Math.ceil((double)total/ROW_PER_PAGE); // 총페이지 수
		// 시작페이지 : 현재페이지 - (현재페이지 - 1)%10
		int startPage = currentPage - (currentPage - 1)%PAGE_PER_BLOCK;
		// 끝페이지 : 시작페이지 + 블록당페이지 수 - 1
		int endPage = startPage + PAGE_PER_BLOCK - 1;
		// 총페이지보다 큰 endPage가 나올 수 없다.
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		// JSP에서 jstl로 사용하는 변수와 값을 전달
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("number", number);
		request.setAttribute("list", list);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		
		return "a1_list.jsp";
	}
}

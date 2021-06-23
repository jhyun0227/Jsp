<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = "";
//  pc에 있는 해당 도메인에 있는 쿠키를 전부 읽는다.
	Cookie[] cooks = request.getCookies();
	if (cooks == null) {
		response.sendRedirect("a2_loginForm.jsp");
	} else {
		for(int i=0; i < cooks.length; i++) {
//								login 페이지에서 추가한 쿠키의 속성의 값을 비교
			if (cooks[i].getName().equals("id")) { // id 값이 있다.
				id = cooks[i].getValue();
				break;
			}
		}
		if (id == null || id.equals("")) {
			response.sendRedirect("a2_loginForm.jsp");
		}
	}
%>
<h2><%=id %>님 환영합니다.</h2>
<a href="a4_logout.jsp">로그아웃</a>
</body>
</html>
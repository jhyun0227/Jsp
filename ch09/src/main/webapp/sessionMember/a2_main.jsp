<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	if (id == null || id.equals("")) {
		response.sendRedirect("a1_loginForm.jsp");
		return;
	}
	
	MemberDao md = MemberDao.getInstance();
	String name = md.getName(id);
%>
<h2><%=id %>님 환영합니다.</h2>
<h2><%=name %></h2>
<button onclick="location.href='a3_logOut.jsp'">로그아웃</button>
</body>
</html>
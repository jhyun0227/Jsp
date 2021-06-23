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
	String menu = request.getParameter("menu");
%>
<!-- jsp:include는 실행한 결과를 가지고 온다 : 동적 -->
<jsp:include page = "<%=menu %>"></jsp:include>
</body>
</html>
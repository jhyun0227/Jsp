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
	String[] color = {"red", "orange", "yellow", "green", "blue", "navy", "violet"};
	request.setAttribute("color", color);
%>
<jsp:forward page="a6_forEach.jsp"></jsp:forward>

<!-- ctrl + shift + / -->
</body>
</html>
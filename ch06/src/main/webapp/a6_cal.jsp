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
	request.setCharacterEncoding("utf-8");
%>
앞부분
<hr>
<jsp:forward page="a6_calResult.jsp">
	<jsp:param value="5" name="num2"/>
</jsp:forward>
<hr>
뒷부분
</body>
</html>
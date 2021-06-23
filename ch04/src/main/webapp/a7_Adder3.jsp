<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "a7_except_j.jsp" %>
    <!-- errorPage는 예외가 발생하면 해당 페이지로 이동 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	out.println(num1 + " + " + num2 + " = " + (num1+num2));
%>
</body>
</html>
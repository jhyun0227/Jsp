<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="b3_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사칙 연산</h2>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
	out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
	out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
	out.println(num1 + " / " + num2 + " = " + (num1/num2));
	
	/*
	try {
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
		out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2));
	} catch (NumberFormatException e) {
		out.println("숫자가 아닙니다.");
	} catch (ArithmeticException e) {
		out.println("0으로는 나눌 수 없습니다.");
	}
	*/
%>
</body>
</html>
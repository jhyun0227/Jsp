<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>좋아하는 과일</h2>
${fruits[0] }<br>
${fruits[1] }<br>
${fruits[2] }<br>
${fruits[3] }<br>
${fruits[4] }<br>

<h2>좋아하는 과일</h2>
<%
	List<String> list = (List<String>)request.getAttribute("fruits");
	for(String fruit : list) {
		out.println(fruit + "<br>");
	}
%>
</body>
</html>
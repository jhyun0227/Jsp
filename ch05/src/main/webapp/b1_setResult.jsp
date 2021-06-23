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
<h2>취미</h2>
<!-- Set 클래스는 인덱스가 없이 무작위로 저장 -->
${hobby }

<h2>취미</h2>
<%
	Set<String> set = (Set)request.getAttribute("hobby");
	for (String str : set) {
		out.println(str + "<br>");
	}
%>
</body>
</html>
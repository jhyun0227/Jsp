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
	//                   세션명   값
	session.setAttribute("id", "k1");
	session.setAttribute("pass", "1234");
%>
<h2>세션 생성 완료</h2>
<button onclick="location.href='a1_sessionUse.jsp'">세션보기</button>
</body>
</html>
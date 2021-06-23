<%@page import="ch05.b6_Thermometer"%>
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
b6_Thermometer th = new b6_Thermometer();
	request.setAttribute("th", th);
%>

<h2>온도 측정</h2>
${th.setTh("서울", 27.3) }
서울 섭씨온도 : ${th.getTh("서울") }<p>
서울 화씨온도 : ${th.getFarenheit("서울") }
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바의 for문의 역할을 하는 jstl의 c:forEach -->
<c:forEach var="i" begin="1" end="7">
	<font size="${i }">야호</font><br>
</c:forEach>

<!-- step은 2개씩 건너뛰어라 1, 3, 5, 7 -->
<c:forEach var="i" begin="1" end="7" step="2">
	<font size="${i }">야호</font><br>
</c:forEach>

<!-- count는 1부터 증가 / index는 0부터 증가 / current는 현재 값-->
<c:forEach var="i" begin="1" end="7" varStatus="v">
	<font size="${i }">야호 ${v.count } ${v.index } %{v.current }</font><br>
</c:forEach>
</body>
</html>
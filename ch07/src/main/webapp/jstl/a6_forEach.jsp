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
<!-- item은 배열, list, set, map 데이터 받을 때 사용 -->
<!-- count는 1부터 증가 / index는 0부터 증가 / current는 현재 값-->
<c:forEach var="col" items="${color }" varStatus="v">
	<font color="${col }">야호 ${v.index } ${v.count } ${v.current }</font>
</c:forEach><P>

<!-- 같은 색깔인데 크기를 다르게 -->
<c:forEach var="col" items="${color }">
	<c:forEach var="i" begin="1" end="7">
		<font color="${col }" size="${i }">야호</font>
	</c:forEach><br>
</c:forEach><p>

<!-- 같은 크기로 색깔이 다르게 -->
<c:forEach var="i" begin="1" end="7">
	<c:forEach var="col" items="${color }">
		<font color="${col }" size="${i }">야호</font>
	</c:forEach><br>
</c:forEach><p>

<!-- 다른 크기로 색깔이 다르게 -->
<c:forEach var="col" items="${color }" varStatus="v">
	<font color="${col }" size="${v.count }">야호</font>
</c:forEach><P>
</body>
</html>
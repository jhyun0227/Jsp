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
<h2>오늘의 메뉴</h2>
<!-- var는 데이터를 담을 변수의 이름 item은 setAttribute로 넘어온 데이터를 받음 -->
<c:forEach var="menu" items="${list }" varStatus="v">
	<font size="${v.count }">${menu }</font>
</c:forEach>
</body>
</html>
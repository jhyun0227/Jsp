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
<h2>부호 판정</h2>
수 : ${param.num }<p>
<c:if test="${param.num > 0}">
	${param.num}은 양수입니다.
</c:if>
<c:if test="${param.num == 0}">
	0입니다.
</c:if>
<c:if test="${param.num < 0}">
	${param.num}은 음수입니다.
</c:if>
</body>
</html>
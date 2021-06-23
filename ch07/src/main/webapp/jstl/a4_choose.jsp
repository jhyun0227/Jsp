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
<h2>인사말</h2>
<!-- 자바에서 switch문과 비슷한 역할을 하는 jstl의 c:choose -->
<c:choose>
<!-- 자바에서 case와 같은 역할을 하는 jstl의 c:when -->	
	<c:when test="${param.greet==1 }">처음 뵙겠습니다.</c:when>
	<c:when test="${param.greet==2 }">안녕하세요.</c:when>
	<c:when test="${param.greet==3 }">반갑습니다.</c:when>
<!-- 자바에서 default와 같은 역할을 하는 jstl의 c:otherwise -->	
	<c:otherwise>누구세요</c:otherwise>
</c:choose>
</body>
</html>
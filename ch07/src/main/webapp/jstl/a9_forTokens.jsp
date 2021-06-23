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
<h2>사자 생일날</h2>
<!-- c:forTokens의 delims의 문자를 구분점으로 나눔 -->
<c:forTokens var = "animal" items="늑대,사슴,원숭이,노루" delims=",">
	${animal }<br>
</c:forTokens>

<c:set var="colors" value="red,orange,yellow,green,blue,navy,violet"></c:set>
<c:forTokens var="color" items="${colors }" delims=","><br>
	${color }
</c:forTokens>
</body>
</html>
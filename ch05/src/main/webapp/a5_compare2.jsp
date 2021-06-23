<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>비교 결과</h2>
첫번째 문자 : ${param.string1 }<p>
두번째 문자 : ${param.string2 }<p>
<!-- 문자 비교 -->
큰 문자 : ${param.string1 > param.string2?  param.string1 : param.string2}	
</body>
</html>
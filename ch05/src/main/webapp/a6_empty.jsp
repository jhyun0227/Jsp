<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- ${param.name }님 안녕하세요<p> --%>

<!-- name값이 공백일 경우 3항 연산자 -->
<!-- empty와 not empty로 파라미터 값이 공백인지 알 수 있다. -->
${empty param.name? "손":param.name }님 안녕하세요<p>
${not empty param.name? param.name:"손" }님 안녕하세요<p>
</body>
</html>
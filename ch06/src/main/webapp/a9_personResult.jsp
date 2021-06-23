<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>개인 정보</h2>
<jsp:useBean id="person" class ="ch06.a9_Person" scope="request"></jsp:useBean>
<!-- person.getName(); -->
<jsp:getProperty property="name" name="person"/><p>
<jsp:getProperty property="age" name="person"/><p>
<jsp:getProperty property="gender" name="person"/>
</body>
</html>
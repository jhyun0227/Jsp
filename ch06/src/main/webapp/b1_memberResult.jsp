<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Member member = new Member(); -->
<jsp:useBean id="member" class = "ch06.b1_Member" scope = "request"></jsp:useBean>
<!-- member.getId(); -->
id : <jsp:getProperty property="id" name="member"/><p>
비밀번호 : <jsp:getProperty property="password" name="member"/><p>
이름 : <jsp:getProperty property="name" name="member"/><p>
전화번호 : <jsp:getProperty property="tel" name="member"/>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="person" class = "ch06.a9_Person" scope = "request"></jsp:useBean>

<!-- value 대신 param을 써서 코드를 간편화했음 -->
<jsp:setProperty property="name" name="person" param="name" />
<jsp:setProperty property="age" name="person" param="age" />
<jsp:setProperty property="gender" name="person" param="gender" />

<jsp:forward page="a9_personResult.jsp"></jsp:forward>
</body>
</html>
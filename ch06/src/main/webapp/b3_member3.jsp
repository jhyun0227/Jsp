<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="ch06.b1_Member" scope ="request"></jsp:useBean>

<!-- java파일의 필드명과 html파일의 속성명이 같으면 알아서 순서를 맞춰서 데이터가 저장되어진다. -->
<jsp:setProperty property="*" name="member"/>

<jsp:forward page="b1_memberResult.jsp"></jsp:forward>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch06.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Person person = new Person(); -->
<jsp:useBean id="person" class ="ch06.a9_Person" scope="request"></jsp:useBean> <!-- scope를 request로 바꿔주어 범위를 넓여줌 -->
<!-- person.setName(value); -->
<jsp:setProperty property="name" name="person" value="홍길동"/>
<jsp:setProperty property="age" name="person" value="22"/>
<jsp:setProperty property="gender" name="person" value="남자"/>

<jsp:forward page="a9_personResult.jsp"></jsp:forward>


<!-- <h2>개인 정보</h2> -->
<!-- person.getName(); -->
<!-- 
<jsp:getProperty property="name" name="person"/><p>
<jsp:getProperty property="age" name="person"/><p>
<jsp:getProperty property="gender" name="person"/>
-->
</body>
</html>
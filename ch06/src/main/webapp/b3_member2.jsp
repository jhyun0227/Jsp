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

<!-- property는 member객체의 필드명 name은 인스턴스명 param은 html로 부터 받아온 name데이터의 값 -->
<jsp:setProperty property="id" name="member" param="id"/>
<jsp:setProperty property="password" name="member" param="password"/>
<jsp:setProperty property="name" name="member" param="name"/>
<jsp:setProperty property="tel" name="member" param="tel"/>

<jsp:forward page="b1_memberResult.jsp"></jsp:forward>
</body>
</html>
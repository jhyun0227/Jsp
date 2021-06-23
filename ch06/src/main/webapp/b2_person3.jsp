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

<!-- property에 *를 넣어 모든 필드에 대하여 setter method 적용 -->
<jsp:setProperty property="*" name="person" />


<jsp:forward page="a9_personResult.jsp"></jsp:forward>
</body>
</html>
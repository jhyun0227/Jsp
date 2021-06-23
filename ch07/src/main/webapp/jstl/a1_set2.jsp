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
<!-- set은 변수 선언과 대입 -->
<!-- scope = "request"를 사용하면 setting한 변수를 다른 프로그램에서 사용 가능 -->
<c:set var = "plus" value = "${param.num1 + param.num2 }" scope = "request"/>
<c:set var = "minus" value = "${param.num1 - param.num2 }" scope = "request"/>
<c:set var = "multiply" value = "${param.num1 * param.num2 }" scope = "request"/>
<c:set var = "divide" value = "${param.num1 / param.num2 }" scope = "request"/>

<jsp:forward page="a1_setResult.jsp"></jsp:forward>
</body>
</html>
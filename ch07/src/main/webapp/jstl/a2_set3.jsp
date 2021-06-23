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
<!-- 자바코드가 아니기 때문에 변수에 타입지정을 할 필요가 없다. -->
<c:set var = "code" value = "a01" scope="request"></c:set>
<c:set var = "name" value = "라면" scope="request"></c:set>
<c:set var = "price" value = "2000" scope="request"></c:set>

<jsp:forward page="a2_set3Result.jsp"></jsp:forward>
</body>
</html>
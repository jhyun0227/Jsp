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
<!-- jsp:include와 비슷한 역할을 한다. -->
<!-- c:param으로 변수에 값 전송 -->
대박인가
<c:import url="a8_gugu.jsp">
	<c:param name="gugu" value="5"></c:param>
</c:import>
</body>
</html>
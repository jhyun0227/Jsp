<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
취미앞
<hr>
<jsp:include page="a4_hobbyResult.jsp">
	<jsp:param value="배고파" name="hobby"/> <!-- 값을 변경하는 jsp:param -->
</jsp:include>
<hr>
<%@ include file = "a4_hobbyResult.jsp" %>
<hr>
취미끝
</body>
</html>
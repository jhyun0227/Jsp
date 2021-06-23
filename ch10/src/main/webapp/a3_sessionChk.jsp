<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="id" value="${sessionScope.id }"></c:set>
	<c:if test="${empty id }">
	<script type="text/javascript">
		location.href="a2_loginForm.jsp"
	</script>
	</c:if> --%>

<%
	String id = (String)session.getAttribute("id");
	if (id == null || id.equals("")) {
		response.sendRedirect("a2_loginForm.jsp");
		return;
	}
%>
<!-- 로그인을 하지 않은 사람들이 접근하는 것을 막아줌 -->
</body>
</html>
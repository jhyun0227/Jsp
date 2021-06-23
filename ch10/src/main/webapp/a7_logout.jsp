<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="a3_sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate(); // 세션 정보 삭제
%>
<script type="text/javascript">
	alert("로그아웃 되었습니다.");
	location.href="a2_loginForm.jsp"
</script>
</body>
</html>
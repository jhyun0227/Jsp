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
	try { // 예외 처리
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		out.println(num1 + " + " + num2 + " = " + (num1+num2));
	} catch (NumberFormatException e) {
%>
	<script type = "text/javascript">
		alert("그게 숫자?");
		history.back(); // history.go(-1);s  한페이지 전으로
	</script>
<%
	}
%>
</body>
</html>
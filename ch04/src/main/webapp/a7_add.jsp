<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
<form action="a7_Adder3.jsp"> <!-- name 결과값을 a7_Adder3.jsp 보냄 -->
<table>
<caption>덧셈</caption>
	<tr>
		<th>첫번째 수</th>
		<td><input type="text" name="num1" required="required" autofocus="autofocus"></td>
	</tr>
	<tr>
		<th>두번째 수</th>
		<td><input type="text" name="num2" required="required"></td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="확인"></th>
	</tr>
</table>
</form>
</body>
</html>
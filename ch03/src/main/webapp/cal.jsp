<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "common.css"> 
</head>
<body>
	<form action = "calResult.jsp">
		<table>
			<caption>사칙 연산</caption>
			<tr>
				<th>숫자를 입력하세요.</th>
				<td>
					<input type = "number" name = "num1" required = "required" autofocus = "autofocus">
					<input type = "number" name = "num2" required = "required">
				</td>
			</tr>
			<tr>
				<th colspan = "2"><input type = "submit" value = "확인"></th>
			</tr>
		</table>
	</form>
</body>
</html>
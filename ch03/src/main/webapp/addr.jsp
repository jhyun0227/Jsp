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
	<form action = "addrResult.jsp" method = "post">
		<table>
			<caption>이름</caption>
			<tr>
				<th>이름</th>
				<td>
					<input type = "text" name = "name" required = "required" autofocus = "autofocus">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type = "text" name = "addr" required = "required">
				</td>
			</tr>
			<tr>
				<th colspan = "2"><input type = "submit" value = "확인"></th>
			</tr>
		</table>
	</form>
</body>
</html>
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
	<form action = "omeResult.jsp" method = "post">
		<table>
		<caption>오늘의 메뉴</caption>
		<tr>
			<th>메뉴</th>
			<td>
				<select name = "menu" multiple = "multiple">
					<option>짜장면 <option>울면 <option>짬뽕 <option>만두 
				</select>
			</td>
		</tr>
		<tr>
			<th colspan = "2">
				<input type = "submit" value = "확인">
				<input type = "reset" value = "취소">
			</th>
		</tr>
		</table>
	</form>
</body>
</html>
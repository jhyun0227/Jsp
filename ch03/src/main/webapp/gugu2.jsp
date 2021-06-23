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
	<form action = "gugu2Result.jsp">
		<table>
			<caption>원하는 구구단 번호 선택</caption>
			<tr>
				<th>구구단</th>
				<td>
					<label for = "2">2</label>
					<input type = "radio" name = "num" value = "2" id = "2" checked = "checked"><br>
					<label for = "3">3</label>
					<input type = "radio" name = "num" value = "3" id = "3"><br>
					<label for = "4">4</label>
					<input type = "radio" name = "num" value = "4" id = "4"><br>
					<label for = "5">5</label>
					<input type = "radio" name = "num" value = "5" id = "5"><br>
					<label for = "6">6</label>
					<input type = "radio" name = "num" value = "6" id = "6"><br>
					<label for = "7">7</label>
					<input type = "radio" name = "num" value = "7" id = "7"><br>
					<label for = "8">8</label>
					<input type = "radio" name = "num" value = "8" id = "8"><br>
					<label for = "9">9</label>
					<input type = "radio" name = "num" value = "9" id = "9"><br>
				</td>
			</tr>
			<tr>
				<th colspan = "2"><input type = "submit" value = "확인"></th>
			</tr>
		</table>
	</form>
</body>
</html>
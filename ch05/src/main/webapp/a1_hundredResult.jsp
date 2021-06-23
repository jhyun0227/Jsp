<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1부터 100까지 합계</h2>
<%=request.getAttribute("sum") %> <p> <!-- 그냥 표현식 -->
${sum } <!-- Expression Language 익스프레션 언어 -->
</body>
</html>
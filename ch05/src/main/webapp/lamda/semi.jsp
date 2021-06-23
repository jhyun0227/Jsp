<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세미콜론 연산자가 있으면 뒤에만 표시한다 -->
${1+1 }<p>
${1+1; 10+10 }<p>
${var1 = 10; var1 }
${var1; "" }
</body>
</html>
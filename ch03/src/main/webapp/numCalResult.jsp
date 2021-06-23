<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사칙연산 결과</h2>
덧셈 : <%=request.getAttribute("plus") %><br>
뺄셈 : <%=request.getAttribute("minus") %><br>
곱셈 : <%=request.getAttribute("mul") %><br>
나눗셈 : <%=request.getAttribute("div") %><br>
</body>
</html>
<!-- setAttribute로 저장된 데이터는 getAttribute로 읽는다. -->
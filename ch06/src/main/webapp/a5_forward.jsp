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
	request.setCharacterEncoding("utf-8"); // method가 post 그리고 utf체크는 보여주는 페이지에서 한다
%>
여기는 앞부분
포워딩하는 페이지 forwardTest.jsp 로 절대 표시되지 않습니다
<hr>
<jsp:forward page="a5_forwardResult.jsp"></jsp:forward> <!-- 결과를 떠넘긴다 jsp:forward -->
<hr>
아래 부분
</body>
</html>
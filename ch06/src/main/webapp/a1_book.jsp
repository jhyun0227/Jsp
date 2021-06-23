<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>책 소개</h2>
제목 : 대지<p>
작자 : 펄벅<p>
내용 : 왕릉일가 이야기<p>

<!-- 액션태그는 실행 결과를 가져온다 -->
<!-- include 지시자는 소스를 가지고와서 같이 컴파일 한다. -->
<jsp:include page="a1_copy.html"></jsp:include><br> <!-- 액션태그 : 단순히 실행결과만 가져옴 -->
<%@ include file ="a1_copy.html" %><p>              <!-- 지시자사용 : 소스가 들어와서 같이 컴파일이 됨 -->

<jsp:include page="a1_copy.jsp"></jsp:include><br>

<%@ include file ="a1_copy.jsp" %><p> <!-- 지시자를 사용하였을 경우에는 지시자에서 정의된 파일의 변수를 사용할 수 있다. -->
<%=a %>
</body>
</html>
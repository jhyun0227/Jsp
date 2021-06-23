<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1부터 100까지 합</h2>
<%	// 자바코드
	int sum = 0;
	/* 합계 */ // 자바코드 주석
	for (int i = 1; i <= 100; i++) {
		sum += i;
	}
%>
<!-- html 주석 --> 페이지 소스에는 이것만 보임 남들이 봐도되는 정보는 html주석으로
<%=sum %>
<%-- jsp주석 --%> 남들이 안봐야되는 정보는 jsp주석으로
</body>
</html>
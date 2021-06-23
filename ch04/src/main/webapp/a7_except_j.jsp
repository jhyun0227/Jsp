<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
    <!-- isErrorPage 에러페이지라는 것을 알려줌 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 인터넷 익스플로러는 에러메세지가 512byte가 넘으면 에러페이지를 보여주고 그렇지 않으면 자체 에러 페이지를 보여준다 -->
<% // 그렇기 때문에 필요한 인터넷 익스플로러를 위한 스크립트 코드
	// 이 프로그램은 정상입니다.
	response.setStatus(200);
%>
불편을 드려서 죄송합니다<p>
더 나은 서비스를 위해서 작업중입니다.<p>
<!-- exception은 isErrorPage="true"일 경우에만 사용가능하다. -->
<%=exception.getMessage() %>
</body>
</html>
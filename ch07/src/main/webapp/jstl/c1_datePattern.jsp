<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- pattern 출력하는 형식을 저장하는 경우
	mm : 분, MM : 월
	E : 요일, a : 오전/오후 -->
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
날짜 : <fmt:formatDate value="${date }" type="date" pattern="yyyy/MM/dd (E)"/><br>
시간 : <fmt:formatDate value="${date }" type="time" pattern="(a) hh:mm:ss (E)"/><br>
날짜 : <fmt:formatDate value="${date }" type="date" pattern="yyyy-MM-dd (E)"/>
</body>
</html>
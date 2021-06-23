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
1000000<p>
<fmt:formatNumber value="1000000"></fmt:formatNumber><p>
<!-- 뒤에 소수점 개수 -->
<fmt:formatNumber value="233.1415" pattern="#.##"></fmt:formatNumber><p> 
<fmt:formatNumber value="1233.1415" pattern="#,###.##"></fmt:formatNumber><p>
<!-- 소숫점 2자리 이하면 생략 -->
<fmt:formatNumber value="1233.1" pattern="#,###.##"></fmt:formatNumber><p>
<fmt:formatNumber value="1233.1" pattern="#,###.00"></fmt:formatNumber><p> <!-- 무조건 소수점 두자리 맞춰줌 -->
<!-- %로 변경 -->
<fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber><p>
<!-- 그 나라 화폐단위로 -->
<fmt:formatNumber value="123" type="currency"></fmt:formatNumber><p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%-- <c:url var="myUrl" value="http://www.naver.com"></c:url> --%>
<%-- <c:url var="myUrl" value="gugu2.jsp"></c:url>
<c:redirect url="${myUrl}"></c:redirect> --%>
<%-- <c:redirect url="/jstl/gugu2.jsp"></c:redirect> --%>
<!-- <a href="/ch07/jstl/gugu2.jsp">구구단</a> -->
<!-- html에서 /는 http://ip번호:포트
	 redirect 또는 java에서 /는 http://ip번호:포트번호/패키지(ch07) -->
<c:url var="url" value="gugu.jsp">
	<c:param name="num" value="7"></c:param>
</c:url>
<c:redirect url="${url }"></c:redirect>
</body>
</html>
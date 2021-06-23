<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
불편을 드려서 죄송 합니다<p>
더 좋은 서비스를 위하여 업그레이드 중입니다
<%
	String err = (String)request.getAttribute("err"); // err 어트리뷰트를 받아서 err문자열에 저장
%>
<br>
에러 원인 = <%=err %>
</body>
</html>
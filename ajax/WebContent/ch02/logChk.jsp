<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<c:choose>
	<c:when test="${param.id=='java' && param.pass=='1234'}">
		반가워 친구
	</c:when>
	<c:otherwise>
		넌 누구냐 !! 
	</c:otherwise>
</c:choose>	
</body>
</html>
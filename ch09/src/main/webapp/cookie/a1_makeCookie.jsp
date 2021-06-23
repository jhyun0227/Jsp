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
	//						  속성     값
	Cookie cook = new Cookie("id", "hong");
// 생략하고 브라우저를 닫으면 쿠키 사용 종료
	cook.setMaxAge(60*2); // 초단위 쿠키 사용 시간
//	cook.setMaxAge(0);	// 쿠키 삭제 효과
	cook.setValue("kim");	// 쿠키값을 hong에서 kim으로 변경
	response.addCookie(cook);
%>
<h2>쿠키 생성</h2>
<a href="a1_cookieUse.jsp">쿠키 값 확인</a>
</body>
</html>
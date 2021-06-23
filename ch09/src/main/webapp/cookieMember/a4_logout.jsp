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
	Cookie[] cooks = request.getCookies();
	if (cooks == null) {
		response.sendRedirect("a2_loginForm.jsp");
	} else {
		for (int i=0; i < cooks.length; i++) {
			if (cooks[i].getName().equals("id")) {
				cooks[i].setMaxAge(0); // cookie 사용 종료
				/* 현재 사용하는 쿠키를 사용종료된 쿠키로 덮어 쓴다. */
				response.addCookie(cooks[i]);
				break;
			}
		}
	}
%>
<script type="text/javascript">
	alert("로그 아웃 되었습니다.");
	location.href = "a2_loginForm.jsp"
</script>
</body>
</html>
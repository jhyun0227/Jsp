<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	MemberDao md = MemberDao.getInstance();
	int result = md.check(id, password);
	if (result > 0) {
		//						 속성   값
		Cookie cook = new Cookie("id", id);
		response.addCookie(cook);
		response.sendRedirect("a3_main.jsp");
	} else if (result == 0) { %>
		<script type="text/javascript">
			alert("암호가 틀렸습니다.");
			history.go(-1);
		</script>
<% 	} else { %>
		<script type="text/javascript">
			alert("없는 ID입니다.");
			history.go(-1);
		</script>
<%	} %>
</body>
</html>
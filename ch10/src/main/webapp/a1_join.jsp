<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch10.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="ch10.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<%
	MemberDao md = MemberDao.getInstance();
	int result = md.insert(member);
	if (result > 0) { %> 
		<script type="text/javascript">
			alert('입력 성공');
			location.href="a2_loginForm.jsp"
		</script>
<%	} else { %>
		<script type="text/javascript">
			alert('입력 실패');
			history.go(-1);
		</script>
<%	} %>
</body>
</html>
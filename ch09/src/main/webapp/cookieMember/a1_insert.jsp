<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<!-- Member member = new Member(); -->
<jsp:useBean id="member" class="ch09.Member"></jsp:useBean>
<!-- id, password, name을 member객체에 setter method를 통하여 저장 -->
<jsp:setProperty property="*" name="member"/>

<%
	// 싱글톤을 이용하여 객체 생성
	MemberDao md = MemberDao.getInstance();
	int result = md.insert(member);
	if (result > 0) { %>
		<script type="text/javascript">
			alert("회원가입 되었습니다.");
			location.href="a2_loginForm.jsp";
		</script>	
<%	} else { %>
		<script type="text/javascript">
			alert("회원가입에 실패하였습니다.");
			history.go(-1);
		</script>
<% } %>
</body>
</html>
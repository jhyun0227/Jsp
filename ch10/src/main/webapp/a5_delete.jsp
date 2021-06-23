<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch10.*"%>
<%@ include file="a3_sessionChk.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDao md = MemberDao.getInstance();
	int result = md.delete(id);
	if (result > 0) {
		session.invalidate(); %>
		<script type="text/javascript">
			alert("회원 탈퇴가 완료되었습니다.")
			location.href="a2_loginForm.jsp"
		</script>	
<%	} else { %> 
		<script type="text/javascript">
			alert("회원 탈퇴가 실패하였습니다.")
			location.go(-1);
		</script>
<%	} %>
</body>
</html>
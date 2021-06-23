<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.confirmPass.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.password.focus();
			frm.password.value = "";
			return false;
		}
	}
</script>
</head>
<body>
<form action="update.do" method="post" name="frm" onsubmit="return chk()">
	<input type="hidden" name="id" value="${member.id }">
<table>
	<caption>회원정보 수정</caption>
	<tr>
		<th>아이디</th>
		<td>${member.id }</td>
	</tr>
	<tr>
		<th>암호</th>
		<td>
			<input type="password" name="password" required="required" autofocus="autofocus">
		</td>
	</tr>
	<tr>
		<th>암호확인</th>
		<td>
			<input type="password" name="confirmPass" required="required">
		</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>
			<input type="text" name="name" required="required" value="${member.name }">
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td>
			<input type="text" name="address" required="required" value="${member.address }">
		</td>
	</tr>
	<tr>
		<th>전화</th>
		<td>
			<input type="tel" name="tel" title="전화형식 3-3,4-4" required="required" pattern="\d{3}-\d{3,4}-\d{4}" value="${member.tel }">
		</td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" value="확인">
		</th>
	</tr>
</table>
</form>
</body>
</html>
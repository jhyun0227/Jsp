<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="a3_sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style>
<script type="text/javascript">
	function del() {
		// 확인을 클릭하면 true, 취소를 체크하면 false
		var chk = confirm("정말로 탈퇴하시겠습니까?");
		if (chk) {
			location.href="a5_delete.jsp";
		} else {
			alert("삭제가 취소 되었습니다.");
		}
	}
	function chk() {
		var id = "<%=id %>"; /* 자바스크립트에서 자바변수를 쓸때 따옴표로 처리해야 사용 */
		// 문자와 비교할 때 java equals()메서드 이지만 자바스크립트는 ==로 비교한다.
		if (id != 'master') {
			alert("리스트를 볼 권한이 없습니다.");
			return;
		} else {
			location.href="a6_list.jsp";
		}
	}
</script>
</head>
<body>
<table>
	<caption>회원 관리</caption>
	<tr>
		<th>
			<button onclick="location.href='a4_updateForm.jsp'">회원 정보 수정</button>
		</th>
		<th>
			<button onclick="del()">회원 탈퇴</button>
		</th>
		<th>
			<button onclick="chk()">회원 목록</button>
		</th>
		<th>
			<button onclick="location.href='a7_logout.jsp'">로그 아웃</button>
		</th>
	</tr>
</table>
</body>
</html>
<%@page import="ch08.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("../common.css");
</style>
</head>
<body>
<%
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/test?useSSL=true&serverTimezone=UTC";
	String sql = "select * from dept where deptno="+deptno;
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "root", "mysql");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	Dept dept = new Dept();
	dept.setDeptno(deptno);
	dept.setDname(rs.getString("dname"));
	dept.setLoc(rs.getString("loc"));
	pageContext.setAttribute("dept", dept);
	rs.close(); stmt.close(); conn.close();
%>
<form action="a4_deptUpdate.jsp" method="post">
<input type="hidden" name="deptno" value="${dept.deptno }">
<table>
	<caption>부서정보 수정</caption>
	<tr>
		<th>부서코드</th>
		<td>
			<%-- <input type="number" name="deptno" value="${dept.deptno }" readonly="readonly"> --%>
			<!-- disabled="disabled"는 수정도 안되고 값 전달도 안됨 -->
			${dept.deptno }
		</td>
	</tr>
	<tr>
		<th>부서명</th>
		<td>
			<input type="text" name="dname" required="required" autofocus="autofocus" value="${dept.dname }">
		</td>
	</tr>
	<tr>
		<th>근무지</th>
		<td>
			<input type="text" name="loc" required="required" value="${dept.loc }">
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
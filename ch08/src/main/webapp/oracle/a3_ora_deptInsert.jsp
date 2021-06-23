<%@page import="java.sql.*"%>
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
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	String sql = "insert into dept values(?,?,?)";
	
	try {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, "scott", "tiger");
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, deptno);
		pstmt.setString(2, dname);
		pstmt.setString(3, loc);
		int result = pstmt.executeUpdate();
		pstmt.close(); conn.close();
%>
		<script type="text/javascript">
			alert("부서정보가 입력 되었습니다.");
			location.href = "a2_ora_select.jsp";
		</script>
<%  } catch(Exception e) { 
	System.out.println(e.getMessage());
%>
		<script type="text/javascript">
			alert("부서정보가 입력되지 않았습니다.");
			history.go(-1);
		</script>
<% } %>
</body>
</html>
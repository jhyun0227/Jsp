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
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/test?useSSL=true&serverTimezone=UTC";
	
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String sql = "delete from dept where deptno="+deptno;
	
	Connection conn = null;
	Statement stmt = null;	// try-catch문을 이용할때에는 null값으로 지정
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "root", "mysql");
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(sql);
		if (result > 0) { %>
		<script type="text/javascript">
			alert("삭제 성공");
			location.href = "a2_select.jsp";
		</script>
<%		} else {
			out.println("삭제 실패");	
		}
	} catch (Exception e) { %>
		<script type="text/javascript">
			alert("삭제 실패");
			history.go(-1);
		</script>
<%	} finally {
		
	} %>
</body>
</html>
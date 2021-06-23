<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String pageNum = request.getParameter("pageNum");
	int num = Integer.parseInt(request.getParameter("num"));
	String password = request.getParameter("password");
	BoardDao bd = BoardDao.getInstance();
	int result = bd.delete(num, password);
	if (result > 0) { %>
	<script type="text/javascript">
		alert("삭제 완료");
		location.href="a1_list.jsp?pageNum=<%=pageNum %>";
	</script>
<%  } else if (result == 0){ %>
	<script type="text/javascript">
		alert("삭제 실패");
		history.go(-1);
	</script>
<%	} else { %>
	<script type="text/javascript">
		alert("암호가 다릅니다.");
		history.go(-1);
	</script>
<%  } %>
</body>
</html>
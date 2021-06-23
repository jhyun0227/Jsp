<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch11.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="board" class="ch11.Board"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
<%
	String pageNum = request.getParameter("pageNum");
	String ip = request.getRemoteAddr(); // 글쓰는 사람이 사용하는 ip번호
	board.setIp(ip);
	BoardDao bd = BoardDao.getInstance();
	int result = bd.insert(board);
	if (result > 0) { %>
		<script type="text/javascript">
			alert("입력 성공");
			location.href="a1_list.jsp?pageNum=<%=pageNum %>";
		</script>
<%	} else { %>
		<script type="text/javascript">
			alert("입력 실패");
			location.go(-1);
		</script>
<%	} %>
</body>
</html>
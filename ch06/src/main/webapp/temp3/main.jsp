<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type = "text/css">
	@import url("../common.css");
	#header {background-color: yellow; height: 50px;}
	#nav {background-color: violet; height: 400px; float: left; width: 20%}
	#article {background-color: pink; height: 400px; float :right; width: 80%}
	#footer {background-color: cyan; height: 50px; clear: both;}
</style>
</head>
<body>
<%
	String pgm = request.getParameter("pgm");
	if (pgm == null || pgm.equals("")) {
		pgm = "home.jsp";
	} else {
		pgm += ".jsp";
	}
%>

<div id="header"><jsp:include page="header.jsp"></jsp:include></div>
<div id="nav"><jsp:include page="menu.jsp"></jsp:include></div>
<div id="article"><jsp:include page="<%=pgm %>"></jsp:include></div>
<div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>

</body>
</html>
<!-- html5를 이용한 웹구현 -->
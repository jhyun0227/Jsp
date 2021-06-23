<%@ page import="java.util.*"%>
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
	// map은 key와 value
	Map<String, String> map = new HashMap<>();
	map.put("name", "윤여정"); map.put("age", "65"); map.put("hobby", "울기");
	
	request.setAttribute("map", map);
	RequestDispatcher rd = request.getRequestDispatcher("b2_mapResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>
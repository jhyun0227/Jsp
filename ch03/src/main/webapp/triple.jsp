<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type = "text/css">
	@import url("common.css");
</style>
</head>
<body>
<h2>세제곱</h2>
1 ^ 3 = <%=triple(1) %><p>
2 ^ 3 = <%=triple(2) %><p>
3 ^ 3 = <%=triple(3) %><p>
4 ^ 3 = <%=triple(4) %><p>
5 ^ 3 = <%=triple(5) %><p>

<%! // 선언부가 되고 매개변수 또는 메서드를 사용할 수 있다.
	private int triple(int x) {
		int result = 1;
		for (int i = 0; i < 3; i++) {
			result *= x;
		}
		return result;
	}
%>
</body>
</html>
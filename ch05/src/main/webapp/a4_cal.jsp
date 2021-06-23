<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>사칙 연산 결과</h2>
<!-- EL언어 -->
${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }<p> <!-- 파라미터 값일 경우 이렇게 -->
${param.num1 } - ${param.num2 } = ${param.num1 - param.num2 }<p>
${param.num1 } * ${param.num2 } = ${param.num1 * param.num2 }<p>
<!-- 결과가 실수이고 num2의 0을 실수로 해서 아주 작은 값으로 인식 -->
<!-- 숫자를 아주 작은 값으로 나누면 무한대(infinity)로 처리 -->
${param.num1 } / ${param.num2 } = ${param.num1 / param.num2 }<p>


<!-- 차이점 비교 -->
<!-- 스크립트 코드 -->
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
	out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
	out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
	if (num2 != 0) { // 정수 0으로 나눌 수 없다.
		out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<p>"); // 결과가 정수
	}
%>
</body>
</html>
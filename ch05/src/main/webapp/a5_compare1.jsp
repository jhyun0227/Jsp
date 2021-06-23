<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>비교 결과</h2>
첫번째 수 : ${param.num1 }<p>
두번째 수 : ${param.num2 }<p>
<!-- 앞자리부터 비교해서 큰지 판단한다 예를들어 72와 9비교 시 9가 크다고 나온다.  -->
큰 수 : <!-- ${param.num1 > param.num2? param.num1 : param.num2 } -- 3항 연산자 -->
<!-- 숫자를 비교할 때에는 빼기를 해서 0보다 큰지 체크 -->  
	  ${param.num1 - param.num2 > 0?  param.num1 : param.num2}	
</body>
</html>
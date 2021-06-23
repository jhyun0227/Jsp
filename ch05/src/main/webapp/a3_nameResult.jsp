<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이름과 주소</h2>
이름 : ${param.name }<p>
주소 : ${param.addr }<p>
이름 : ${param["name"] }<p>
주소 : ${param["addr"] }
<!-- 두개 유형중에 쓰고싶은걸로 쓰라 -->
</body>
</html>
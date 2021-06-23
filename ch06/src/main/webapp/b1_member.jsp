<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Member member = new Member(); -->
<!-- useBean은 클래스의 객체를 생성하는 액션태그 -->
<!-- id는 참조변수명 -->
<jsp:useBean id="member" class = "ch06.b1_Member" scope = "request"></jsp:useBean>

<!-- member.setId(value) -->
<!-- name은 참조변수명 property는 필드명 value는 필드값 -->
<jsp:setProperty property="id" name="member" value="k1"/>
<jsp:setProperty property="password" name="member" value="k1"/>
<jsp:setProperty property="name" name="member" value="아이유"/>
<jsp:setProperty property="tel" name="member" value="010-1111-2222"/>

<!-- 결과 값을 보려면 페이지를 b1_memberResult.jsp로 넘겨 -->
<jsp:forward page="b1_memberResult.jsp"></jsp:forward>
</body>
</html>
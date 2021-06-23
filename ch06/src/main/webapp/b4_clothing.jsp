<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="product" class="ch06.b4_Clothing" scope="request"></jsp:useBean>

<jsp:setProperty property="code" name="product" value="a02"/>
<jsp:setProperty property="name" name="product" value="청바지"/>
<jsp:setProperty property="price" name="product" value="50000"/>
<jsp:setProperty property="size" name="product" value="33"/>
<jsp:setProperty property="color" name="product" value="denim"/>

<jsp:forward page="b4_product.jsp"></jsp:forward>
</body>
</html>
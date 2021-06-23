<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty" %>
<!-- 최대값 변수명을 임의로 장한대로 사용할 때 --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- rtexprvalue="false" 변수로 EL표현식 사용불가 -->
<%@ attribute name="var" required="true" rtexprvalue="false" %>
<%@ attribute name="num1" required="true" type="java.lang.Integer" %>
<%@ attribute name="num2" required="true" type="java.lang.Integer" %>
<%@ variable name-from-attribute="var" alias="maximum" 
	variable-class="java.lang.Integer" scope="AT_END" %>
<%
	int result = 0;
	if (num1 > num2) result = num1;
	else result = num2;
%>
<c:set var="maximum"  value="<%=result %>"></c:set>
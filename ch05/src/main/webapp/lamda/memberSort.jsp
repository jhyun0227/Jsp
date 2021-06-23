<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05.*,java.util.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	List<Member> list = new ArrayList<>();
	list.add(new Member("세정", 22));    list.add(new Member("유느님", 50));
	list.add(new Member("강다니엘", 29)); list.add(new Member("모모", 31));
	request.setAttribute("list", list);
%>
${minMan = list.stream().min((m1,m2)->m1.age.compareTo(m2.age)).get();"" }
${maxMan = list.stream().max((m1,m2)->m1.age.compareTo(m2.age)).get();"" }
<h2>나이가 다장 많은 사람</h2>
이름 : ${minMan.name }<p>
나이 : ${minMan.age }<p>
<h2>나이가 가장 적은 사람</h2>
이름 : ${maxMan.name }<p>
나이 : ${maxMan.age }<p>
</body>
</html>
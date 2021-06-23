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
<h2>나이 기준</h2>
오름 차순 : ${list.stream().sorted((m1,m2)->m1.age.compareTo(m2.age)).toList() }<p>
내림 차순 : ${list.stream().sorted((m1,m2)->m2.age.compareTo(m1.age)).toList() }<p>
<h2>이름 기준</h2>
오름 차순 : ${list.stream().sorted((m1,m2)->m1.name.compareTo(m2.name)).toList() }<p>
내림 차순 : ${list.stream().sorted((m1,m2)->m2.name.compareTo(m1.name)).toList() }<p>
</body>
</html>
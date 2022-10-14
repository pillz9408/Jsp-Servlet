<%@page import="java.util.ArrayList"%>
<%@page import="com.member.beans.MemberBeans"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
<h3>회원가입 결과</h3>
<!-- 멤버리스트와 멤버 세션 불러오기 -->>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<jsp:useBean id="member" class="com.member.beans.MemberBeans" scope="session"/>
<!-- 세션에 저장된 값을 getProperty 액션태그를 이용하여 가져오기 -->
아이디: <jsp:getProperty name="member" property="id"/> <br>
비밀번호 :<jsp:getProperty name="member" property="pwd"/><br>
이름: <jsp:getProperty name="member" property="name"/><br>
<button><a href="JoinForm.jsp">뒤로<%session.invalidate();%></a></button>
<h3>회원 리스트</h3>
<table border>
	<tr><th>아이디</th><th>비밀번호</th><th>이름</th></tr>
	<% 
	ArrayList<MemberBeans> mm = ml.getList();
	for(MemberBeans m: mm){
	%>
		<tr>
		<td><%=m.getId() %></td><td><%=m.getPwd() %></td><td><%=m.getName() %></td>
		</tr>
	<% } %>
</table>

</body>
</html>
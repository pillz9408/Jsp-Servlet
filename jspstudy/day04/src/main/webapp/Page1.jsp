<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<h2>1페이지</h2>
<% 
	if(session.getAttribute("userId")==null){
		response.sendRedirect("LoginForm.jsp");
	}
%>

<%=session.getAttribute("userId") %>님 환영합니다.
<%
String id_str = session.getId();
long lastTime = session.getLastAccessedTime();
long createdTime = session.getCreationTime();
long timeUsed = (lastTime - createdTime) / 60000;
int inactive = session.getMaxInactiveInterval() / 60;
boolean b_new = session.isNew();
%>
세션 ID: <%=id_str %><br>
웹사이트에 머문 시간: <%=timeUsed %>분<br>
세션 유효시간: <%=inactive %>분<br>
<%
if(b_new)
out.print("새로운 세션입니다.");
else out.print("기존 세션입니다.");
%>
<hr>
<a href="Logout.jsp">로그아웃</a><br>
<a href="Page2.jsp">2페이지로 이동</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2페이지</title>
</head>
<body>
<h2>2페이지</h2>
<% 
	if(session.getAttribute("userId")==null){
		response.sendRedirect("LoginForm.jsp");
	}
%>
<%=session.getAttribute("userId") %>님 환영합니다.
세션 시작시간: <%=session.getAttribute("sst") %>분
<%
	//현재 세션시간 구하기
	long ptime = session.getLastAccessedTime()/1000/60;
	// 세션이 유지된 시간 : (abs(세션 시작시간 - 현재시간))
	long stime = ptime -(long)session.getAttribute("sst");
	out.print("머문 시간: "+ stime+"분");
%>

<hr>
<a href="Logout.jsp">로그아웃</a><br>
<a href="Page1.jsp">1페이지로 이동</a>
</body>
</html>
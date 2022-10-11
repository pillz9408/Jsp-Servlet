<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
</head>
<body>
<div style="width: 600px; height: 500px; border: 1px solid gray; text-align:center">
<h2>로그인 성공!</h2>
<% 
	if(session.getAttribute("userId")==null){
		response.sendRedirect("LoginPageSession.html");
	}
%>

<%=session.getAttribute("name") %>님 환영합니다.
<br><img src="./images/2.png " style="width:400px; height:300px">
<hr>
오늘날짜:
<% 
	Calendar cal = Calendar.getInstance();
	out.print(cal.get(Calendar.YEAR)+ "년" + (cal.get(Calendar.MONTH)+1) + "월" + cal.get(Calendar.DATE) + "일");
%>
<hr>
<button><a href="Logout2.jsp">로그아웃</a></button>
</div>
</body>
</html>
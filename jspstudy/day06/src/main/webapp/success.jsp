<%@page import="java.util.Calendar"%>
<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공!</title>
</head>
<body>
<div style="width: 600px; height: 500px; border: 1px solid gray; text-align:center">
<h2>로그인 성공!</h2>
<% 
	MemberVO member = (MemberVO)session.getAttribute("member");
	String name = member.getName();
	
	if(session.getAttribute("member")==null){
		response.sendRedirect("main.jsp");
	}
%>
<%=name %>님 환영합니다.
오늘날짜:
<% 
	Calendar cal = Calendar.getInstance();
	out.print(cal.get(Calendar.YEAR)+ "년" + (cal.get(Calendar.MONTH)+1) + "월" + cal.get(Calendar.DATE) + "일");
%>
<a href="allMember.jsp">회원 리스트 확인</a>
<a href="logout.jsp">로그아웃</a>
</div>
</body>
</html>
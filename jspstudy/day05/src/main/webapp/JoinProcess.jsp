<%--page import="beans.Member"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinProcess</title>
</head>
<body>
<%
	//한글 인코딩
	request.setCharacterEncoding("UTF-8");
	//request 객체로부터 데이터 분리(가져오기)
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	
	//Member 객체 생성
//	Member member = new Member();
	//Member 객체에 데이터 저장	
//	member.setId(id);
//	member.setPwd(pwd);
//	member.setName(name);
 
%>
	<!--useBean 이용한 객체 생성과 데이터 저장 -> 액션태그는 XML표준에 맞추어 작성(시작,끝 태그 )-->
	<jsp:useBean id="member" class="beans.Member" scope="request"/>
	<jsp:setProperty name="member" property="*"/>
	<!-- jsp:setProperty name="member" property="pwd"/ -->
	<!-- jsp:setProperty name="member" property="name"/ -->
<%
	//세션 생성
	//session.setAttribute("member", member);
	//forward()통해 공유
	RequestDispatcher disp = request.getRequestDispatcher("JoinView.jsp");
	disp.forward(request, response);

%>	
	<!-- 결과 피드백 
	<h3>회원가입 결과</h3>
		아이디:member.getId()<br>
		비밀번호:member.getPwd()<br>
		이름:member.getName()<br>
	-->
</body>
</html>
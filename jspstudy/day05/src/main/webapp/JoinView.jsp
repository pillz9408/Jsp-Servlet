<%@page import="beans.Member"%>
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
<%
	//Member member = (Member)session.getAttribute("member");
%>
<!--  아이디: <member.getId() %><br>
비밀번호: <member.getPwd() %><br>
이름: <member.getName() %><br>
-->
<!-- request 객체에 저장된 값을 getProperty 액션태그를 이용하여 가져오기 -->
<jsp:useBean id="member" class="beans.Member" scope="request"/>
아이디: <jsp:getProperty name="member" property="id"/> <br>
비밀번호 :<jsp:getProperty name="member" property="pwd"/><br>
이름: <jsp:getProperty name="member" property="name"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
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
%>
	<!--useBean 이용한 객체 생성과 데이터 저장 -> 액션태그는 XML표준에 맞추어 작성(시작,끝 태그 )-->
	<jsp:useBean id="member" class="com.member.beans.MemberBeans" scope="session"/>
	<jsp:setProperty name="member" property="*"/>
<%
	//세션 생성
	session.setAttribute("member", member);
	response.sendRedirect("JoinView.jsp");
%>	
<%	
	//Memberlist에 정보 저장
	ml.add(member);
%>

</body>
</html>
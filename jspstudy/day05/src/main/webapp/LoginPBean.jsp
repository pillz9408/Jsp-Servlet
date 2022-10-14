<%@page import="beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<%	
	//로그인 정보를 가져와서 member 객체에 저장된 값과 일치여부 판단
	//Member 객체 생성
	Member member = new Member();
	//member값이 있는지 콘솔 확인
	//system.out.print(member.getId());
	//한글 인코딩
	request.setCharacterEncoding("UTF-8");
	//request 객체로부터 데이터 분리(가져오기)
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	//id,pwd 맞는지 확인
	String name = member.checkUser(id, pwd);
	
	if(name != null){
		session.setAttribute("name", name);
		response.sendRedirect("MainBean.jsp");
	}else{
		response.sendRedirect("LoginFormBean.jsp");
	}
%>

</body>
</html>
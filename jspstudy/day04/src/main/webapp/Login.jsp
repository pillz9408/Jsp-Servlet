<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<%
	//로그인 정보를 가져와서 사이트 사용자인지 확인
	String userId = "smart";
	String userPwd = "1234";
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	//맞으면 Page1로 이동 -> 세션 유지하면서 Page2로 이동 
	if(id.equals(userId)&&pass.equals(userPwd)){
		//세션정보로 userId값을 저장
		session.setAttribute("userId", userId);
		//세션 생성시간 확인
		long time = session.getCreationTime()/1000/60;
		//세션 생성시간 보내기
		session.setAttribute("sst", time);
		//System.out.print("세션시작시간"+(time/1000/60)+"분");
		//Page1 로 이동
		response.sendRedirect("Page1.jsp");
	}
	//틀리면 LoginForm으로 이동
	else{
		response.sendRedirect("LoginForm.jsp");
	}
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPr</title>
</head>
<body>
<%
	// id, pass 가져온후 회원이라면 로그인페이지로, 아니라면 안내메세지페이지로 이동
	//데이터 가져오기
	String userId = "smart";
	String userPwd = "1234";
	// 전송데이터가 없을 경우 확인
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	//데이터 처리
	//데이터가 없을경우 로그인 페이지로
	if(id !=null && pass !=null ){
		//회원이면 성공페이지로(Success.jsp) id:smart1234 pw:12345678
		if(id.equals(userId)&&pass.equals(userPwd)){
			session.setAttribute("userId", userId);
			String name = "홍길동";
			session.setAttribute("name", name);
			//Page 로 이동
			response.sendRedirect("SuccessSession.jsp");
		}else{
			//회원이 아니라면 로그인페이지로 (Fail.jsp)안내
			response.sendRedirect("FailSession.jsp");
		}
	}else{
		response.sendRedirect("LoginPageSession.html");
	}
		
%>

</body>
</html>
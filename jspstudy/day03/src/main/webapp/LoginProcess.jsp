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
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	//데이터 처리
	//회원이면 성공페이지로(Success.jsp) id:smart1234 pw:12345678
	if(id.equals("smart1234")&&pass.equals("12345678")){
		//1. sendRedirect 이용한 페이지 이동
		//response.sendRedirect("Success.jsp?id="+id);
		//forwad()이용한 페이지 이동
		String name="홍길동";
		request.setAttribute("name", name);
		//2-1. RequestDispatcher 객체 생성
		RequestDispatcher dispatcher = request.getRequestDispatcher("Success.jsp");
		//2-2. forward()메소드 호출
		dispatcher.forward(request, response);
	}else{
		//회원이 아니라면 로그인페이지로 (Fail.jsp)안내
		response.sendRedirect("Fail.jsp");
	}
%>

</body>
</html>
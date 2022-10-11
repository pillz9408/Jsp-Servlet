<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니목록</title>
</head>
<body>
<%
	//쇼핑목록 쿠키 생성, 저장하기
	// data 인코딩
	request.setCharacterEncoding("UTF-8");
	//1. data 가져오기(복수 getParameterValues())
	String[] books = request.getParameterValues("book");
	//2. 쿠키 생성
	Cookie [] cookies = new Cookie[books.length];
	
	for(int i=0; i<books.length; i++){
		//(name, value)=> book
		cookies[i]= new Cookie("book"+i,books[i]);
		//유효기간 설정
		cookies[i].setMaxAge(60*60);
		//response 객체에 담기
		response.addCookie(cookies[i]);
	}
	
	response.sendRedirect("ShoppingBook.jsp");
	
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move?</title>
</head>
<body>
<%
	//데이터 받기
	String url = request.getParameter("URL");
	
	//데이터처리 네이버, 다음, 구글
	if(url.equals("네이버")){
		response.sendRedirect("https://www.naver.com/");
	}else if(url.equals("다음")){
		response.sendRedirect("https://www.daum.net/");
	}else {
		response.sendRedirect("https://www.google.co.kr/");
	}
	
%>

</body>
</html>
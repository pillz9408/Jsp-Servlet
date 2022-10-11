<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인실패!</title>
</head>
<body>
<div style="width: 600px; height: 500px; border: 1px solid gray; text-align:center">
<h2>로그인 실패!</h2>
<br><img src="./images/1.png " style="width:400px; height:300px">
<hr>
오늘날짜:<% 
	Calendar cal = Calendar.getInstance();
	out.print(cal.get(Calendar.YEAR)+ "년" + (cal.get(Calendar.MONTH)+1) + "월" + cal.get(Calendar.DATE) + "일");
%>
<hr>
<button><a href="LoginPageSession.html">로그인페이지로 돌아가기.</a></button>
</div>
</body>
</html>
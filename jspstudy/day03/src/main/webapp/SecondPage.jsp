<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2</title>
</head>
<body>
<div style="width: 600px; height: 500px; border: 1px solid gray; text-align:center">
<h2>두번째 페이지</h2>
내용이 여기에 들어갑니다.
<br><img src="./images/2.png " style="width:400px; height:300px">
<hr>
<a href="FirstPage.jsp">첫번째 페이지</a>
<hr>
오늘날짜:<%@include file="Today.jsp" %>
</div>
</body>
</html>
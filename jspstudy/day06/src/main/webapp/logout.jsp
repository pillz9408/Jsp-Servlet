<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
	//로그아웃을 할 경우에는 세션을 무효화 시켜준다.
	session.invalidate();
	//이동 페이지로 안내.
	response.sendRedirect("main.jsp");
%>

</body>
</html>
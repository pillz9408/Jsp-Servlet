<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인성공</title>
</head>
<body>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("LoginFormBean.jsp");
}
%>
<h3><%=session.getAttribute("name")%>님 환영합니다!</h3>
<button><a href="LoginFormBean.jsp">로그아웃<%session.invalidate();%></a></button>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="addr.beans.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="UTF-8"/>

<jsp:useBean id="addr" class="addr.beans.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>

<jsp:useBean id="am" class="addr.beans.AddrManager" scope="application"/>
<%
	am.add(addr);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add.jsp</title>
</head>
<body>
<div align="center">
<H2>등록내용</H2>
이름 : ${addr.username } <P>
전화번호 : ${addr.tel}<P>
이메일 : ${addr.email} <P>
성별 : ${addr.gender}
<HR>
<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>










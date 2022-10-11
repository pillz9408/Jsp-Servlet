<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declare Test</title>
</head>
<body>
<h3>선언문 연습</h3>
<%! 
	//멤버 변수 선언
	int globalCnt=0;

%>
<h3>스크립트릿 코드</h3>
<% 
	//지역 변수 선언
	int localCnt=0;

	out.print("<br>globalCnt: "+ ++globalCnt);
	out.print("<br>localCnt: " + ++localCnt);


%>


</body>
</html>
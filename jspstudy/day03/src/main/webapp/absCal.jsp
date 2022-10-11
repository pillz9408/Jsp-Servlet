<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>absCal</title>
</head>
<body>
<%! 
		int abs(int num){
		if(num>0){
			return num;
		}else{
			return -num;
		}
	}
%>
<h3>abs()메소드 호출하기</h3>
<%
	int data = 5;
	int result = abs(data);
	
	out.print(data+"의 절대값: " + result);
%>
<br>
<%	
	data = -5;
	out.print(data+"의 절대값: " + abs(data));
	
%>


</body>
</html>
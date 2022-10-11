<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
<%	Random random = new Random();
	String [] menu = {"제육","국밥","햄버거","파스타","회덮밥","일식","샌드리아","떡볶이","치킨","쌀국수","팟타이","김치찌개",
			"된장찌개","스테이크","타코","김밥","라면","굶어"};
	int index = random.nextInt(menu.length); //0~length-1 리턴
	out.print("오늘의 추천 메뉴 " + menu[index]);
%>
</body>
</html>
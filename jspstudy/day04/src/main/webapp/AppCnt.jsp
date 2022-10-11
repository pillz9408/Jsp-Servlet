<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>count</title>
</head>
<body>
<h3>사이트 방문자 수 출력하기 : Application 객체 이용.</h3>
<%
	//application 객체 정보를 얻어서 값이 존재하는지를 확인.
	Integer visitCnt = (Integer)application.getAttribute("visitCnt");
	//존재하지 않을 경우에는 방문자 수를 저장할 변수 생성
	if(visitCnt == null){
		application.setAttribute("visitCnt", 1);
	}else{
		if(session.isNew()){
		//존재할 경우는 방문자수 증
		visitCnt++;
		//application 객체에 저장
		application.setAttribute("visitCnt", visitCnt);
		}
	}
%>
<br>
<h3>방문자 수는<%=application.getAttribute("visitCnt")%>명 입니다.</h3>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
<fieldset style="width:200px; height:130px;">
<legend>로그인</legend>
<form action="LoginPBean.jsp" method="post">
<input type="text" name="id" placeholder="아이디 입력"><br>
<input type="password" name="pwd" placeholder="비밀번호 입력"><br>
<input type="submit" value="로그인">
<input type="reset" value="초기화">
<br>
</form>
</fieldset>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset style="width:300px; height:200px; text-align:left;">
<legend> 로그인</legend>
<form action="LoginService" method= "post">
	<input type="text" name="userid" size="20" placeholder="아이디 입력"><br>
	<input type="password" name="pwd" size="20" placeholder="비밀번호 입력"><br>
	<input type="submit" value= "로그인" >
</form>

</fieldset>

</body>
</html>
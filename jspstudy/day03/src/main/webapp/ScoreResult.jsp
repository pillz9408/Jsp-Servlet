<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
	<% 
	//한글 인코딩
	request.setCharacterEncoding("UTF-8");
	//변수를 저장할 배열 선언
	int [] scr = new int[4];
	//data 가져오기
	String name = request.getParameter("name");
	scr[0] = Integer.parseInt(request.getParameter("java"));
	scr[1] = Integer.parseInt(request.getParameter("python"));
	scr[2] = Integer.parseInt(request.getParameter("web"));
	scr[3] = Integer.parseInt(request.getParameter("ai"));
	double avg = average(scr);
	%>

<%! 
	//data 처리 - 평균 메소드 선언
	double average(int [] scr){
		double avg =0;
		int sum = 0;
		for(int i = 0; i<scr.length; i++){
			sum+=scr[i];
		}
		avg = (double)sum/scr.length;
		return avg;
	}
%>
<!-- 데이터 출력 -->
<div style="width: 500px; border:solid 1px gray; text-align:center">
<h3>학점 확인</h3>
<form>
<table align="center">
<!-- 6행 2열구성 -->
<tr>
	<td>이름: </td><td><%=name %></td>
</tr>

<tr>
	<td>JAVA점수: </td><td><%=scr[0] %></td>
</tr>

<tr>
	<td>Python점수: </td><td><%=scr[1] %></td>
</tr>

<tr>
	<td>WEB점수: </td><td><%=scr[2]%></td>
</tr>

<tr>
	<td>AI점수: </td><td><%=scr[3]%></td>
</tr>

<tr>
	<td>평균 점수:</td><td><%=avg%></td>
</tr>
<tr>
	<td>학점: </td><td><%	
		int grade = 0;
		if(avg >= 95){
			out.print("<b>A+</b>");
		}else if(avg >= 90){
			out.print("<b>A</b>");
		}else if(avg >=85){
			out.print("<b>B+</b>");
		}else if(avg >=80){
			out.print("<b>B</b>");	
		}else if(avg >=75){
			out.print("<b>C+</b>");
		}else if(avg >=70) {
			out.print("<b>C</b>");
		}else{
			out.print("<b>F</b>");
		}
 		%>
	</td>
</tr>
</table>
</form>
</div>

</body>
</html>
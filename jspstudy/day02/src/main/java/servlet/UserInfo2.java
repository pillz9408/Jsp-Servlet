package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserInfo2
 */
@WebServlet("/userinfo2")
public class UserInfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		//데이터 가져오기
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String food[]= request.getParameterValues("food");
		String inter[] = request.getParameterValues("interest");
		//출력 문자열 인코딩방식 지정
		response.setContentType("text/html; charset=UTF-8");
		//출력스트림 가져오기
		PrintWriter out = response.getWriter();
		//HTML작성, 로직 처리
		out.print("<body>");
		out.print("이름: " + name +"<br>");
		//나이 +(숫자+ 대 )출력하기
		int result =0;
		int var = 0;
		if(10<=age && age<20) {
				var = 1;
			}else if(20<=age && age<30) {
				var = 2;
			}else if(30<=age && age<40) {
				var = 3;
			}else if(40<=age && age<50) {
				var = 4;
			}else if(50<=age && age<60) {
				var = 5;
			}else if(50<=age && age<100) {
				var = 6;
		}
		
		switch(var){
			case 1:
				result = 10;
				break;
			case 2:
				result = 20;
				break;
			case 3:
				result = 30;
				break;
			case 4:
				result = 40;
				break;
			case 5:
				result = 50;
				break;
			case 6:
				result = 60;
				break;
		}
		
		out.print("나이: " + age +"("+result+"대)" +"<br>");
		out.print("성별: " + gender +"<br>");
		//음식 목록 출력하기
		for(String a : food) {
			out.print("좋아하는 음식: "+ a + " ");
		}
		//관심분야 출력하기
		for(String b : inter) {
			out.print("관심분야: " + b +" ");
		}
		
		out.print("</body>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

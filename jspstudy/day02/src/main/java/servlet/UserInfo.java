package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserInfo
 */
@WebServlet("/userinfo")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		//데이터 받아오기
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		//복수의 데이터 받아오기
		String hobby[] = request.getParameterValues("hobby"); 
		//출력문서 인코딩 방식 지정
		response.setContentType("text/html; charset=UTF-8");
		//출력스트림 가져오기
		PrintWriter out = response.getWriter();
		//HTML 문서로 출력
		out.print("<html><head><title>UserInformation</title></head>");
		out.print("<body>");
		out.print("직업: "+job+"<br>");
		out.print("성별: "+ gender +"<br>");
		//취미 값 출력시키기
		out.print("취미: ");
			//for(int i = 0; i<=(hobby.length); i++) {
			//	out.print(hobby[i]+" ");
		//}
		//for each문
		for(String h: hobby) {
			out.print(h+" ");
		}
		out.print("</body>");
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

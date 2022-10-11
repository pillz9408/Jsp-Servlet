package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MakeTable
 */
@WebServlet("/gugu")
public class Gugudan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gugudan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// 1. 데이터 가져오기
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String color = request.getParameter("color");
		// 2. html 문자열 인코딩
		response.setContentType("text/html; charset=UTF-8");
		// 3. 출력 스트림 가져오기
		PrintWriter out = response.getWriter();
		// 4. HTML 구조 생성
		out.print("<html><head><title>구구단 테이블 만들기</title></head>");
		out.print("<body>");
		// 테이블 배경 색상 지정 bgcolor="color"
		out.print("<table border bgcolor="+ color +">"); 
		// 5. 로직 생성 
		// 범위지정 for문
		for(int i = num1; i<=num2; i++) {
			out.print("<tr>");
			// 구구단 for 문
			for (int j= 1; j<=9; j++){
				out.print("<td>"+i+"*"+j+"="+(i*j)+"</td>");	
			}
			out.print("</tr>");
		}
		out.print("</table>");
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

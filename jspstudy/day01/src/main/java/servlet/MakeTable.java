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
@WebServlet("/makeTable")
public class MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeTable() {
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
		int num = Integer.parseInt(request.getParameter("roomCnt"));
		// 2. html 문자열 인코딩
		response.setContentType("text/html; charset=UTF-8");
		// 3. 출력 스트림 가져오기
		PrintWriter out = response.getWriter();
		// 4. HTML 구조 생성
		out.print("<html><head><title>테이블 만들기</title></head>");
		out.print("<body>");
		out.print("<table border>");
		out.print("<tr>");
		// 5. 로직 생성
		for (int i= 1; i<=num; i++){
			//방만들기 <td>~</td>
			out.print("<td>"+i+"</td>");	
		}
		out.print("</tr>");
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

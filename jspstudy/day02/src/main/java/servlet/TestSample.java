package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestSample
 */
@WebServlet("/testServlet")
public class TestSample extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestSample() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//전송 데이터 인코딩 방식 지정
		request.setCharacterEncoding("UTF-8");
		//데이터 받아오기 id = ID, pass = Password
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		//인코딩
		response.setContentType("text/html; charset=UTF-8");
		//출력스트림
		PrintWriter out = response.getWriter();
		//로직 처리 및 HTML 출력
		//id 님 환영합니다.
		out.print("<html><head><title>로그인 결과</title></head>");
		out.print("<body>");
		//<b> 볼드체 설정 </b>
		out.print("<b>"+id+"</b>님 환영합니다.");
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

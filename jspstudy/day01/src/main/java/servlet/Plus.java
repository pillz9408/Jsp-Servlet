package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Plus
 */
@WebServlet("/plus")
public class Plus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Plus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// html 문서 한글 인코딩 방식 지정
		response.setContentType("text/html;charset=UTF-8");
		// 출력 스트림 객체 얻어오기
		PrintWriter out = response.getWriter();
		
		//request객체에 담긴 데이터 가져오기
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		//연산을 위해 num1,num2값을 int로 형 변환
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
		int result = n1 + n2;
		
		//연산결과 출력
		out.print(num1+"+"+num2+"="+result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

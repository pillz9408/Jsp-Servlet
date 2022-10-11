package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcProcess
 */
@WebServlet("/calcProcess")
public class CalcProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		// 1. 데이터 가져오기
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String op = request.getParameter("op");
		
		
		// 2. HTML 문서내 한글 인코딩 방식 지정
		response.setContentType("text/html;charset=UTF-8");
		// 3. 출력스트림 가져오기
		PrintWriter out = response.getWriter();
		// 4. 로직처리 +,-,*,/
		int result = 0;
		switch(op){
			case "+": 
				result = num1+num2;
				break;
			case "-": 
				result = num1-num2; 
				break;
			case "*": 
				result = num1*num2; 
				break;
			case "/": 
				result = num1/num2; 
				break;
		}
		out.print(num1+op+num2+"="+result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

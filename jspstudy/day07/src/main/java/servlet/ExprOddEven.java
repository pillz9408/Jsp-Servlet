package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/expr")
public class ExprOddEven extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//데이터 받기
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num1"));
		//데이터 처리
		int sum = num1+num2;
		
		//데이터 내보내기
		request.setAttribute("sum", sum);
		
		RequestDispatcher dispt = request.getRequestDispatcher("exprView.jsp");
		dispt.forward(request, response);
		
	}

}

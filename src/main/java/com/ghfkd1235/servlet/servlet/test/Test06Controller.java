package com.ghfkd1235.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		
		PrintWriter out = response.getWriter();
		
		int num1 = Integer.parseInt(request.getParameter("number1"));
		
		String number2 = request.getParameter("number2");
		int num2 = Integer.parseInt(number2);
		
//		out.println("<html><head><title>test06</title></head><body>");
//		out.println("<h1> 연산링크");
//		out.println("</body></html>");
		
		// {"addition":10, "subtraction":5, "multiplication":12, "division":1}

		out.println();
		out.println("\"addition\" :" + (num1 + num2) + ",");
		out.println("\"subtration\" :" + (num1 - num2) + ",");
		out.println("\"multiplication\" :" + (num1 * num2) + ",");
		out.println("\"division\" :" + (num1 / num2));

	}

}

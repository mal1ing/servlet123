package com.ghfkd1235.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String number = request.getParameter("number");
		int gugu = Integer.parseInt(number);
		
		out.println("<html><head><title>test05</title></head><body>");
		out.println("<h1> 구구단 링크");
		out.println("<ul>");
	
		for(int i = 1; i <= 9; i++) {
			out.println("<li> " + gugu +" X " + i + " = " + (gugu * i)+"</li>");
		}
		out.println("</ul></body></html>");
	}

}

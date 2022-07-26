package com.ghfkd1235.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		//이름과 자기소개 전달 받아서 출력
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>지원결과</title></head><body>");
		
		out.println("<h1>" + name + "님 지원이 완료되었습니다.</h1> <hr>");
		out.println("지원 내용 <br>" + introduce);
		
		out.println("</body></html>");
		
		
		
		
	}
}

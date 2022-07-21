package com.ghfkd1235.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestMapping01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("kk시 mm분 ss초");
		String dateTimeString = formatter.format(now);
		
		out.println("현재 시간은 " + dateTimeString + "입니다.");
	}

}

package com.ghfkd1235.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet  {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		//주소=address, 결제카드=card, 가격=price
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		int priceInt = Integer.parseInt(price);
		
		
		if(address.contains("서울시") && (!card.equals("신한카드"))) {
			out.println("<html><head><title></title></head><body>");
			out.println(address + "로 배달중<hr>");
			out.println("결제금액 : " + priceInt + "원" + "</body></html>");			
		} else if(!address.contains("서울시")){
			out.println("<html><head><title></title></head><body>");
			out.println("배달불가 지역입니다.</body></html>");			
		} else if(card.contains("신한카드")) {
			out.println("<html><head><title></title></head><body>");
			out.println("결제 불가 카드입니다.</body></html>");	
		}
		
		
		
	}
}

package com.ghfkd1235.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "ghfkd1235");
			put("password", "asdf");
			put("name", "김현식");
		}	
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		
		//아이디와 패스워드 입력\
		//일치여부
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println("<html><head><title>로그인확인</title></head><body>");
		
		// id가 일치하지 않는 경우
		if(!id.equals(userMap.get("id"))) {
			out.println("<h1>id 일치하지 않습니다!!</h1>");
		} else if(!password.equals(userMap.get("password"))) { // password가 일치하지 않는 경우
			out.println("<h1>password가 일치하지 않습니다.");
		} else {
			out.println("<h1>" + userMap.get("name") + ""
					+ " 환영합니다. </h1>");
		}
		
		out.println("</body></html>");
	}

}

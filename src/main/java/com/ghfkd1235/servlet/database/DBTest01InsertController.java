package com.ghfkd1235.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ghfkd1235.servlet.common.MysqlService;

@WebServlet("/db/test01/insert")
public class DBTest01InsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 이름, url
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `bookmark`\n"
				+ "(`name`,  `url`,  `createdAt`, `updatedAt`)\n"
				+ "VALUE \n"
				+ "('" + name + "',	'"+ url + "', now(),now());";
		
		int count = mysqlService.update(query);
		
		mysqlService.disConnect();
		
		// 페이지를 리스트 페이지로 이동한다.
		// redirect
		
		response.sendRedirect("/db/test01.jsp");
	}

}

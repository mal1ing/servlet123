package com.ghfkd1235.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ghfkd1235.servlet.common.MysqlService;


@WebServlet("/db/test01/delete")
public class DBTest01DeleteController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		// Delete 쿼리 수행
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `bookmark` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		//리스트 페이지로 리다이렉트
		response.sendRedirect("/db/test01.jsp");
	}

	
}

package com.ghfkd1235.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ghfkd1235.servlet.common.MysqlService;

@WebServlet("/db/ex01")
public class DBEx01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setContentType("text/plain");
			
			
			PrintWriter out = response.getWriter();
			
			
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connect();
			String selectQuery = "SELECT * FROM `booking`;";
			ResultSet resultSet = mysqlService.select(selectQuery);
			
			
			try {
				while(resultSet.next()) {
					String name = resultSet.getString("name");
					int id = resultSet.getInt("id");
					
					out.println("id :" + id + "이름 : " + name);
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			String insertQuery = "INSERT INTO `booking` \n"
			+ "(`name`, `headcount`, `day`, `date`, `phoneNumber`, `state`, `createdAT`, `updatedAT`)\n"
			+ "VALUES\n"
			+ "('김현식2', 2, 3, '2022-08-15', '010-3318-9876', '확정', now(), now());";
			
			int count = mysqlService.update(insertQuery);
			
			
			out.println("삽입결과 : " + count);
			
			
			
			
			
			
//			try {
//				DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//				
//				
//				// 접속 주소, 아이디, 패스워드
//				String url = "jdbc:mysql://localhost:3306/ghfkd1235";
//				String userId = "root";
//				String password = "5573";
//				
//				Connection connection = DriverManager.getConnection(url, userId, password);
//				Statement statement = connection.createStatement();
//				
//				// used_goods 모든 행 출력
//				String selectQuery = "SELECT * FROM `booking`;";
//				ResultSet resultSet = statement.executeQuery(selectQuery);
//				
//				while(resultSet.next()) {
//				
//					String name = resultSet.getString("name");
//					int id = resultSet.getInt("id");
//					
//					out.println("id :" + id + "이름 : " + name);
//				}
//				
//				String insertQuery = "INSERT INTO `booking` \n"
//						+ "(`name`, `headcount`, `day`, `date`, `phoneNumber`, `state`, `createdAT`, `updatedAT`)\n"
//						+ "VALUES\n"
//						+ "('김현식', 3, 3, '2022-08-15', '010-3318-9876', '확정', now(), now());";
//				
//				// insert, update, delete
//				//실행된 행의 갯수
//				//insert - 삽입된 행의 개수 update - 수정된 행의 개수 delete - 삭제된 행의 개수	
//				
//				int count = statement.executeUpdate(insertQuery);
//				
//				out.println("삽입 결과 : " + count);
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
			
	}

}

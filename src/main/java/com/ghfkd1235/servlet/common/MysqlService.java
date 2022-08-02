package com.ghfkd1235.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {

		
		private static MysqlService mysqlService = null; 
		
		
		// url, userId, password
		private final String url = "jdbc:mysql://localhost:3306/ghfkd1235";
		private final String userId = "root";
		private final String password = "5573";
		

		private Connection connection;
		private Statement statement;
		
		
		//객체를 얻어갈 수 있는 메소드
		public static MysqlService getInstance() {
			
			if(mysqlService == null) {
				mysqlService = new MysqlService();
			}
			
			
			return mysqlService;
			
		}
		
		
		
		
		// 접속기능, select 쿼리 수행기능, (insert, update delete 쿼리 수행기능), 접속해제 기능
		
		
		public void connect() {
			try {
				DriverManager.registerDriver(new com.mysql.jdbc.Driver());
				
				this.connection = DriverManager.getConnection(this.url, this.userId, this.password);
				this.statement = connection.createStatement();
				
			} catch (SQLException e) {

				e.printStackTrace();
			}
			
			
		}
		
		
		// SELECT 쿼리 수행기능
		public ResultSet select(String query) {
			
			try {
				return this.statement.executeQuery(query);
			} catch (SQLException e) {
				
				e.printStackTrace();
				return null;
			}			
		}
		
		//INSERT, UPDATE, DELETE 쿼리 수행 기능
		public int update(String query) {
			
			try {
				return this.statement.executeUpdate(query);
			} catch (SQLException e) {

				e.printStackTrace();
				return -1;
			}
		}
		
		// 접속 해제 기능
		public void disConnect() {
			try {
				this.statement.close();
				this.connection.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ghfkd1235.servlet.common.MysqlService" %>  
<%@ page import="java.sql.ResultSet" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "select * from `bookmark` order by `id` desc;";
		ResultSet resultSet = mysqlService.select(query);
		
	
	%>


	<table border="1">
		<thead>
			<tr>
				<th>이름(name)</th>
				<th>주소(url)</th>
				<th></th>
		</thead>
		
		<tbody>
		<% while(resultSet.next())  { %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
				<td><a href="/db/test01/delete?id=<%= resultSet.getInt("id") %>"> 삭제</a></td>
			</tr>
		<% } %>
		</tbody>
	</table>
	
	<a href="/db/test01_input.jsp">입력하기</a>
</body>
</html>
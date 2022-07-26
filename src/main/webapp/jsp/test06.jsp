<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test06</title>
</head>
<body>

	<%
		//장보기 리스트
		List<String> goodsList = Arrays.asList(new String[]{ 
    	"저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});


/* 		for(String item : goodsList){
			out.println("<h2>" + item + "</h2>");
		}
		
		
		int num1 = 0;
		for(int i = 1; i <=goodsList.size(); i++){
			num1++;
			out.println("<h2>" + num1 + "</h2>");
		} */
			

	%>
	<h1>장 목록</h1>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>품목</td>
		</tr>
	<%for(int i = 0; i <goodsList.size(); i++){%>
		<tr>
			<td><%= i + 1 %></td>
			<td><%= goodsList.get(i) %></td>
		</tr>
	<% } %>
	
	
	</table>
	
	
	
</body>
</html>
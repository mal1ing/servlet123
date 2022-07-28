<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>
		<!-- html 주석 : 자바 코드를 포함시킨다.  -->
		<%-- JSP 주석 : 자바 코드를 포함 --%>
		<h2>JSP 기본문법</h2>
		
		<%
				//자바 주석
				// 1 부터 10 까지의 합 구하기
				int sum = 0;
				for(int i = 1; i <= 10; i++){
					sum += i;
				}		
		%>
		
		<h2>합계 : <%= sum %></h2>
		<input type="text" value="<%= sum %>">
		
		
		<%
			// 동물 이름 리스
			List<String> animals = new ArrayList<>();
			animals.add("dog");
			animals.add("cat");
		%> 
	
		<h1><%= animals.get(0) %></h1>
		<h1><%= animals.get(1) %></h1>
		
		<%!
		
			//멤버 변수
			private int number = 100;
		
			//메소드
			//hello world를 리턴
			public String getHelloWorld(){
				return "hello World";
			}
			
		%>
		
		<h3><%= getHelloWorld() %></h3>
		
	
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>

	<% 		//1 
	
			int[] scores = {80, 90, 100, 95, 80}; 
			double sum = 0;
			for(int i = 0; i < scores.length; i++){
				sum += scores[i];
			}
			sum = sum / scores.length;
	
	%>
	
	
	<% 		
			//2
			int sumScore = 0;
			List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
			for(int i = 0; i < scoreList.size(); i++){
				if(scoreList.get(i).equals("O")){
					sumScore += 10;
				} else {
					sumScore += 0;
				}
			}
			

			
	%>

	
	<%! 
			//3
			public int sumT(int number){
				
				int sumT = 0;
				for(int i = 1; i <= number; i++){
					sumT += i;
				}
				return sumT;
			}
	
	%>
	
	<%
			//4
			String birthDay = "20010820";
			String yearString = birthDay.substring(0, 4);
			int year = Integer.parseInt(yearString);
			int old = 2022 - year + 1;
	%>


	<!-- 1 --><div> <%= sum %></div>
	<!-- 2 --><div> <%= sumScore %></div>
	<!-- 3 --><div> <%= sumT(50) %></div>
	<!-- 4 --><div> <%= old %></div>
</body>
</html>
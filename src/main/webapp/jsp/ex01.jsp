<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	// 1. 점수들의 평균 구하기
	// 스크립틀릿(scriptlet) 문법을 사용해서 주어진 점수들의 평균
	
	int[] scores = {80, 90, 100, 95, 80};
	
	int sum = 0;
	for(int i =0; i <scores.length; i++){
		sum += scores[i];
	}
	
	double average = sum / (double)scores.length;
	
		
	%>
	
	<h1> 점수 평균은 <%=   average %>입니다.</h1> 
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		sum = 0;
		for(String score : scoreList){
			
			if(score.equals("O")){
				sum += 10;
			}
		}
	
	
	%>

	<h1>채점 결과는 <%= sum %>점 입니다.</h1>
	
	
	<%! 
	
		// 1부터 n까지의 합을 구하는 함수
		public int allSum(int number){
		
			int sum = 0;
			for(int i = 1; i <= number; i++){
				sum += i;
			}
			
			return sum;
	}
	
	
	%>
	
	<h1> 1에서 50까지의 합은 <%= allSum(50) %> 입니다.</h1>
	
	
	<%
		String birthDay = "20010820";
		
		String yearString = birthDay.substring(0,4);
		
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
	
	%>
	
	<h1><%= birthDay %>의 나이는 <%= age %> 살 입니다.</h1>
	
	
	
	
</body>
</html>
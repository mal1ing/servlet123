<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
	


<% 
	// 키와 몸무게를 입력받고 bmi 수치 계산후 비만도를 표시
	
	double height = Integer.parseInt(request.getParameter("height"));
	double weight = Integer.parseInt(request.getParameter("weight"));
	
	double bmi = weight / ((height / 100.0) * (height / 100.0));
	
	String status = null;
	if(bmi <= 20){
		status = "저체중";
	} else if(bmi <= 25){
		status = "정상";
	} else if(bmi <= 30){
		status = "과체중";
	} else {
		status = "비만";
	}
%>


	
	<div class="container">
	
		<h1>BMI 측정결과</h1>
		<div class="display-4"> 당신은 <span class="text-info"><%= status %></span>입니다.</div>
		<div>bmi 수치: <%= bmi %></div>
	
	</div>
	
	
	</body>
</html>
	
	
	
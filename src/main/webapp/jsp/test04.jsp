<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post test04</title>
</head>
<body>
	<% 
		//사칙연산 출력
		String arithmetic = request.getParameter("arithmetic");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		//더하기 빼기 곱하기 나누기
		// plus, minus, multiple, divide
		
		double result = 0;
		if (arithmetic.equals("+")){
			result = num1 + num2;
		} else if(arithmetic.equals("-")){
			result = num1 - num2;
		} else if(arithmetic.equals("*")){
			result = num1 * num2;
		} else if(arithmetic.equals("/")){
			result = num1 / num2;
		}
		
		
		
		


	
	
	
	%>
	
	<h1>계산결과</h1>
	<div><%= num1 + arithmetic + num2 + "=" + result %></div>

</body>
</html>
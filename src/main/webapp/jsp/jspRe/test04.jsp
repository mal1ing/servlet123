<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	
		String operatorString = request.getParameter("operator");
		
		// 더하기, 빼기, 곱하기, 나누기
		// plus, minus, multiple, divide
		double result = 0;
		String operator= "";
		if(operatorString.equals("plus")) {
			result = num1 + num2;
			operator = "+";
		} else if(operatorString.equals("minus")) {
			result = num1 - num2;
			operator = "-";
		} else if(operatorString.equals("multiple")) {
			result = num1 * num2;
			operator = "X";
		} else {
			result = num1 / (double)num2;
			operator = "/";
		}
	
	%>
	
	<div class="container">
		<h1>계산결과</h1>
		<div class="display-4"><%=num1%> <%= operator %> <%=num2 %> = <span class="text-primary"><%= result %></span></div>
	</div>
<body>

</body>
</html>
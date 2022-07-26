<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post form</title>
</head>
<body>
	<form method="post" action="/jsp/test04.jsp">
	
	<h3>사칙연산</h3>
	<input type="text" name="num1">
	 <select name="arithmetic">
	 	<option value="+" >+</option>
	 	<option value="-" >-</option>
	 	<option value="*" >*</option>
	 	<option value="/" >/</option>
	</select>
	<input type="text" name="num2">
	<button type="submit">계산</button>
	
	</form>

</body>
</html>
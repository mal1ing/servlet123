<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1> 메뉴검색</h1>
		
		<form method="get" action="/jsp/test07.jsp">
			<div>
			<input type="text" name="menu">
			<label><input type="checkbox" name="pointFilter" value="true"> 4점 이하 제외</label>			
			</div>
			<button type="submit" >검색</button>
		</form>
		
		
	</div>
</body>
</html>
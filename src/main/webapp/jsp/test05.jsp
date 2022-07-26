<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>

	<%
		// cm 단위 길이
		// 변환할 단위 목록
		int centimeter = Integer.parseInt(request.getParameter("length"));
		String[] types = request.getParameterValues("type");
		
		
		// 인치, 야드, 피트, 미터
		// inch, yerd, feet, meter
		String result = "";
		
		for(int i = 0; i < types.length; i++){
			if(types[i].equals("inch")) {
				double inch = centimeter * 0.39;
				result += inch + "in<br>";
			} else if(types[i].equals("yard")){
				double yard = centimeter * 0.010936133;
				result += yard + "yd<br>";
			} else if(types[i].equals("feet")){
				double feet = centimeter * 0.032808399;
				result += feet + "ft<br>";
			} else if(types[i].equals("meter")){
				double meter = centimeter / 100.0;
				result += meter + "m<br>";
			}
		}
	%>
	<h2>변환 결과</h2>
	<h3><%= centimeter %> cm</h3>
	<hr>
	
	<h3><%=result %></h3>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02</title>
</head>
<body>
	
	<%
/* 		Date now = new Date();
		SimpleDateFormat timeFormatter = new SimpleDateFormat("현재시간 H시 m분 s초");
		SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘날짜 yyyy년 M월 d일");
		
		String timeString = timeFormatter.format(now);
		String dateString = dateFormatter.format(now);
		
		//오늘 날짜 
		//현재 시간
		

		String what = request.getParameter("what");
		// what이 date면 날짜를 보여주고
		// what이 time이면 시간을 보여준다.
		
		String targetString = null;
		// /jsp/test02.jsp?what=date
		if(what.equals("date")){
			targetString = dateString;
		} else {			// /jsp/test02.jsp?what=time
			targetString = timeString;
		} */
		
	
	%>
	
	<div>
		<div><%= /* targetString */ %></div>
	
	</div>
	
	
	<div>
	
	</div>
</body>
</html>
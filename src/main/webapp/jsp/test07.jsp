<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test07</title>
</head>
<body>
<%
	String searchMenu = request.getParameter("menu");
	String pointFilter = request.getParameter("pointFilter");
	



List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);


%>
<div>
<h1> 검색결과</h1>
<table border="1">
	<thead>
		<tr>
			<th>메뉴</th>
			<th>상호</th>
			<th>별점</th>
		</tr>	
	</thead>
	<tbody>
		<% for(Map<String, Object> store : list) {
			//searchMenu
			if(searchMenu.equals(store.get("menu"))) {
				
				double point = (Double)store.get("point");
				
				//포인트 필터가 체크되어 있지 않으면 보여줘
				//포인트 필터가 선택되었고, 현재 맵의 point가 4.0 이상이면 보여줘라
				if(pointFilter == null || (pointFilter.equals("true") && point >= 4.0)){
					
				
				
			%>
		<tr>
			<td><%= store.get("menu") %></td>
			<td><%= store.get("name") %></td>
			<td><%= store.get("point") %></td>
		</tr>
		<%  }
			} 
		 } %>
	</tbody>
</table>


</div>

</body>
</html>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		HashMap<Integer, Integer>map = (HashMap<Integer, Integer>)session.getAttribute("map");
		
		for(int i = 1; i < 11; i++){
			if(map.containsKey(i)){
				map.remove(i);
			}
		}
			
		request.getRequestDispatcher("gouwuche.jsp").forward(request, response);
	%>
</body>
</html>
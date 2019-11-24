<%@page import="com.ujn.lsw.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv='refresh' content='3;url=homePage.jsp'>
<title>LOGIN SUCCEED</title>

<style type="text/css">

	body {
	
	    background: url(image/5.jpg);
	    background-size:cover;
	
	}

</style>

</head>
<body style = "font-family:Microsoft YaHei;color: white">

	<%
		User user = (User) request.getSession().getAttribute("currentUsert");
		request.setAttribute("currentUsert", user);
		String name = user.getUsername();
		System.out.println(name);
	%>
	
	<h2>欢迎<%=name %>登陆</h2>
	请稍等正在跳转...<a href = "homePage.jsp">点此跳转</a>
	<%
		//request.getRequestDispatcher("./homePage.jsp").forward(request, response);
	%>
</body>
</html>
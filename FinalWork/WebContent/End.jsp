<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PAY</title>
	<style type="text/css">

	body {
		background: url(image/5.jpg);
	    background-size:cover;
	}
	#mydiv {
		width:500px;  
	   	height:550px;  
	   	color:white;
	   	position:absolute;  
	   	left:44%;  
	   	top:40%;  
	   	margin:-100px 0 0 -150px;
	   	color:white;
	   	font-size:30px;
	}

</style>
</head>
<body>
	<div id = "mydiv">
	<center>
	总金额为：<%=session.getAttribute("summary") %>
	付款码：
	<br/>
	<img src = "image/1.png" width = "200px">
	<p style = "word-spacing: 20px">
		 <a href="homePage.jsp">返回首页</a>    <a href = "gouwuche.jsp">返回购物车</a>
		 </p>
	</center>
	</div>
</body>
</html>
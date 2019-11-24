<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href = "<%= basePath %>">
<meta charset="UTF-8">
<title>LOGIN</title>

<style type="text/css">

	body {
		background: url(image/5.jpg);
	    background-size:cover;
	}
	
	#mydiv {
		width:500px;  
	   	height:300px;  
	   	color:white;
	   	position:absolute;  
	   	left:40%;  
	   	top:40%;  
	   	margin:-100px 0 0 -150px
	}

</style>
</head>
<body style = "text-align:center">
<div style = "text-align: center">
	<FORM action = "Login" method = post name = form align = center>
		<div id = "mydiv" style = "font-family:"幼圆"">
		<center><h1>登录</h1></center>
		
			<b>用户名：</b><input type = "text" style = "width:193px;" name = "user" /><br>
			<br/>
			<b style = "word-spacing: 12px">密 码：</b><input type = "password" style = "width:193px;" name = "password" /><br>
			
			<font size = "+1">
				<p style = "word-spacing: 20px">
					<input type = "submit" name = "user" class = "button" style = "width:100px; height:35px" value = "登录 "/>    <input type = "reset" class = "button" style = "width:100px; height:35px" value = "重置" />
				</p>
				<p>
					<font size = "-1" color = "#000099">
						<a href = "register.jsp" style = "color:white;font-size:18px;font-family:"幼圆";">注册</a>
					</font>
				</p>
			</font>
		</div>
	</FORM>
</div>
</body>
</html>
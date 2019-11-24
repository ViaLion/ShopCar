<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER</title>

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
	   	left:40%;  
	   	top:20%;  
	   	margin:-100px 0 0 -150px
	}

</style>

</head>
<body style = "text-align:center">
<div id = "mydiv" style = "font-family: Microsoft YaHei">
<center>
<H1>注册界面</H1>
	<FORM action = "Register" method = post name = form >
		<FONT color = "white">
		<table align = "center" style = "margin:20px">
			<tr align = "left"><td>姓名：</td>
				<td><INPUT type = "text" name = "named" ></td>
			</tr>
			<tr align = "left"><td>用户名：</td>
				<td><INPUT type = "text" name = "user"></td>
			</tr>
			<tr align = "left"><td>密码：</td>
				<td><INPUT type = "password" name = "pass"></td>
			</tr>
			<tr align = "left"><td>确认密码：</td>
				<td><INPUT type = "password" name = "repass"></td>
			</tr>
			<tr align = "left"><td>年龄：</td>
				<td><INPUT type = "text" name = "age"></td>
			</tr>
			<tr align = "left"><td>性别：</td>
				<td align = "center"><INPUT type = "radio" name = "sex" value = "男">男
					<INPUT type = "radio" name = "sex" value = "女" style = "margin-left:50px">女
				</td>
			</tr>
			<tr align = "left"><td rowspan = 2>爱好：</td>
				<td><INPUT type = "checkbox" name = "item" value = "购物">购物
					<INPUT type = "checkbox" name = "item" value = "音乐">音乐
					<INPUT type = "checkbox" name = "item" value = "科技">科技
				</td>
			</tr>
			<tr>
				<td><INPUT type = "checkbox" name = "item" value = "运动">运动
					<INPUT type = "checkbox" name = "item" value = "旅游">旅游
					<INPUT type = "checkbox" name = "item" value = "手工">手工
				</td>
			</tr>
			<tr align = "left"><td>城市：</td>
				<td><select name = "country">
						<option value = "山东">山东
						<option value = "北京">北京
						<option value = "河北">河北
						<option value = "安徽">安徽
						<option value = "广东">广东
						<option value = "台湾">台湾
					</select>
				</td>
			</tr>
			<tr align = "left"><td>电话：</td>
				<td><INPUT type = "text" name = "tel"></td>
			</tr>
			<tr align = "left"><td>邮箱：</td>
				<td><INPUT type = "text" name = "email"></td>
			</tr>
		</table>
		<INPUT type = "submit" name = "submit" value = "提交" style = "margin-right:20px">
		<INPUT type = "reset" name = "reset" value = "重置"  style = "margin-left:20px">
		<br/>
		<br/>
		<a href = "login.jsp" style= "color:white">返回登录</a>
		</FONT>
	</FORM>
</center>
</div>
</body>
</html>

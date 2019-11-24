<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
	<style>
		
		body {
			background: url(image/5.jpg);
		    background-size:cover;
		}
		
		#main{
			osition: relative;
			height: 1100px;
			
		}
		#pic{
			position:absolute;
			left:180px;
			top:100px;
			hight:800px;
		}
		#pic img{
			transition: all 0.4s;
			width:300px;
			height:300px;
		}
		#pic img:hover{
			transform: scale(1.15);
		}

	</style>
	<script language="javascript">
		function appear(x){
		
		document.getElementById("p1"+x).style.visibility="visible";
		}
		function dissappear(x)
		{
			document.getElementById("p1"+x).style.visibility="hidden";
		}
	</script>
</head>

<body >
<center>
		<img id="bt" src="tp/biaoti.png" />
		</center>
		<div id="main">
		<div id="pic">
		<a href="hongmi_k20pro.jsp">
			<img id="zj1" src="tp/红米k20pro.jpg" onMouseOver="appear(1)"  onMouseOut="dissappear(1)">
			</a>
		<a href="hongmi_note8.jsp">
			<img id="zj2" src="tp/红米note8.jpg" onMouseOver="appear(2)"  onMouseOut="dissappear(2)">
			</a>
		<a href="huawei_mate30.jsp">
			<img id="zj3" src="tp/华为mate30.jpg" onMouseOver="appear(3)"  onMouseOut="dissappear(3)">
			</a>
		<a href="huawei_p30.jsp">
			<img id="zj4" src="tp/华为p30.jpg" onMouseOver="appear(4)"  onMouseOut="dissappear(4)">
			</a>
		<a href="njy_x7.jsp">
			<img id="zj5" src="tp/诺基亚x71.png" onMouseOver="appear(5)"  onMouseOut="dissappear(5)">
			</a>
		<a href="pg_11pro.jsp">
			<img id="zj6" src="tp/苹果11pro.jpg" onMouseOver="appear(6)"  onMouseOut="dissappear(6)">
			</a>
		<a href="pg_x.jsp">
			<img id="zj7" src="tp/苹果X.jpg" onMouseOver="appear(7)"  onMouseOut="dissappear(7)">
			</a>
		<a href="sanxing_note10.jsp">
			<img id="zj8" src="tp/三星note10.jpg" onMouseOver="appear(8)"  onMouseOut="dissappear(8)">
			</a>
		<a href="yijia_oneplus7.jsp">
			<img id="zj9" src="tp/一加oneplus7.jpg" onMouseOver="appear(9)"  onMouseOut="dissappear(9)">
			</a>
		</div>
	</div>
		<div id="word">
		<p id="p11" style="position:absolute; top:250px;left:250px;color:red;font-size:25px;visibility: hidden;font-weight: bold">红米k20pro</p>
		<p id="p12" style="position:absolute; top:250px;left:580px;color:white;font-size:25px;visibility: hidden;font-weight: bold">红米note8</p>
		<p id="p13" style="position:absolute; top:250px;left:860px;color:aqua;font-size:25px;visibility: hidden;font-weight: bold">华为mate30</p>
		<p id="p14" style="position:absolute; top:250px;left:1220px;color:greenyellow;font-size:25px;visibility: hidden;font-weight: bold">华为p30</p>
 		<p id="p15" style="position:absolute; top:580px;left:250px;color:fuchsia;font-size:25px;visibility: hidden;font-weight: bold">诺基亚x71</p>
		<p id="p16" style="position:absolute; top:580px;left:580px;color:gold;font-size:25px;visibility: hidden;font-weight: bold">苹果11pro</p>
		<p id="p17" style="position:absolute; top:580px;left:880px;color:mediumslateblue;font-size:25px;visibility: hidden;font-weight: bold" >苹果X</p>	
		<p id="p18" style="position:absolute; top:580px;left:1220px;color:blue;font-size:25px;visibility: hidden;font-weight: bold">三星note10</p>
		<p id="p19" style="position:absolute; top:910px;left:250px;color:yellow;font-size:25px;visibility: hidden;font-weight: bold">一加oneplus7</p>

		</div>
		<center>
			<a href = "login.jsp" style = "color:white;font-size:24px" >返回登录</a>
		</center>
		<br/>
		<br/>
		<br/>
</body>
</html>

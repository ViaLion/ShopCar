<%@page import="com.ujn.lsw.dao.Action"%>
<%@page import="com.ujn.lsw.bean.Good"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.ujn.lsw.dao.GetSQL"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" import="java.util.ArrayList" import="java.util.regex.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>自营店</title>
    
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
	}

</style>
<script>
	function create(){
		document.form.action = "create";
		document.form.submit();
	}
</script>
  </head>
  <body>
  <center>
  <img id="bt" src="tp/biaoti.png" /></br>
  <hr>
  </br>
  <div id = "mydiv">
  
      <form action = "gouwuche.jsp" method = "post" name = "form">
  		<font style = "color:white;font-size:24px">
  		<table style = "color:white;font-size:20px" width = "500px" height = "auto" border="1px">
			<tr align = "center" height = "50px">
				<th>名称</th>
				<th>颜色</th>
				<th>单价</th>
				<th>型号</th>
				<th>数量</th>
				<th>总价</th>
			</tr>
			
        <%
			        	request.setCharacterEncoding("UTF-8");	
	                	HashMap<Integer, Integer>map = (HashMap<Integer, Integer>)session.getAttribute("map");
	                	
	                	int summer = 0;
			                	
			        	for(int i = 1; i < 11; i++){
			        		if(map.containsKey(i)){
			        			Good goods = new Action().findGood(i);
			        		
			        			if(map.get(i) != null){
			        %>
				<tr align = "center" height = "30px">
				<td><%=goods.getNameString() %></td>
				<td><%=goods.getColorString() %></td>
				<td><%=goods.getPriceString() %></td>
				<td><%=goods.getVersonString() %></td>
				<td><%=map.get(i) %></td>
				<td><%=goods.getPriceString() * map.get(i) %></td>
				</form>
			</tr>
			<%
				summer += goods.getPriceString() * map.get(i);
					}
				}
			}
			session.setAttribute("summary", summer);
	      	%>
			</table>
			<br/>
			
			<input type = "submit" value = "提交" onclick="create()">
			<br/>
			<p style = "word-spacing: 20px">
			<a href = "End.jsp">结算</a>  
			小计：<%=summer %>
		</p>
		</form>
		
		</font>
			<form action = "" method = post>
			<p style = "word-spacing: 20px"><a href="homePage.jsp">继续购买</a>    <a href = "Zero.jsp" style = "color:red;">清空购物车</a>
			
			</form>
			<p style = "word-spacing: 20px">
		 <a href="homePage.jsp">返回首页</a>    <a href = "dingdan.jsp">查看订单</a>
		 </p>
	</div>
  </center>
  </body>
</html>

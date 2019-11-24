<%@page contentType="text/html" import="java.util.HashMap" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
       a {
       		text-decoration:none;
       		color:red;
       	}
       body {
			background: url(image/5.jpg);
		    background-size:cover;
		    color:white;
		}
	
    </style>
    </head>
    <body>
    <center>
<img id="bt" src="tp/biaoti.png" />
        <hr/>
		<%
        request.setCharacterEncoding("utf-8");	
		if(request.getParameter("number")!=null){
			int a = Integer.parseInt(request.getParameter("number"));
			
			HashMap<Integer, Integer>map = (HashMap<Integer, Integer>)session.getAttribute("map");
             
	        if(map == null){
	        	map = new HashMap();
	            session.setAttribute("map",map);
	        }
	        if(map!=null){
	        	if(!map.containsKey(2)){
		        	map.put(2, a);
	          	}
	        	else{
	        		a += map.get(2);
	        		map.put(2, a);
	        	}
	        	out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
	        }
		}
        %>
		
		<form action="" name="form" method="post">
        <table width="80%" >
          <tr>
            <td width="10%" rowspan="8"><img src="tp/红米k20pro.jpg" width="400" height="400"></td>
            <td colspan="2">小米 (MI) Redmi Note8 Pro 8+128GB 冰翡翠 6400万四摄小金刚拍照NFC手机超长待机G90T液冷游戏芯6.53“超大全面屏小米红米学生机双卡双待智能</td>
          </tr>
          <tr>
            <td >单价：1799</td> 
			<td>数量 <input type="number" id="number" name="number" min="1" max="999" value="1" required /><td>
          </tr>
          <tr>
            <td>颜色：冰翡翠</td>
			<td>名称：红米note8</td>
          </tr>
          <tr>
            <td colspan="2">版本：8GB + 128GB</td>
          </tr>
       
          <tr>
              <td width="36%"><input type="submit" value="加入购物车" style="color:red;width:150px;height:40px;font-size:20px"></td>
           <td width="41%"><font size="5px" color="red"><a href="gouwuche.jsp">查看购物车</a></font></td>
          </tr>
          <tr>
            <td height="21" colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td height="21" colspan="2"><a href="homePage.jsp">&nbsp;&nbsp;&nbsp;返回首页</a></td>
          </tr>
        </table>
                <hr/>
			</form>
		
    </center>
    </body>
</html>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%int count=1; %>


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
	        	if(!map.containsKey(10)){
		        	map.put(10, a);
	          	}
	        	else{
	        		a += map.get(10);
	        		map.put(10, a);
	        	}
	        	out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
	        }
		}
        %>
        
		<form action="" name="form" method="post">
        <table width="80%" >
          <tr>
            <td width="10%" rowspan="8"><img src="tp/一加oneplus7.jpg" width="400" height="400"></td>
            <td colspan="2">【全新正品】OnePlus/一加7pro 手机 2K+90Hz 流体屏 骁龙855 4800万超广角三摄 星雾蓝 12GB+256GB全网通4G</td>
          </tr>
          <tr>
            <td >单价：5199</td> 
			<td>数量 <input type="number" id="number" name="number" min="1" max="999" required /><td>
          </tr>
          <tr>
            <td colspan="2">颜色：星雾蓝</td>
          </tr>
          <tr>
            <td colspan="2">版本：12GB+256GB</td>
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
			</frorm>
    </center>
    </body>
</html>

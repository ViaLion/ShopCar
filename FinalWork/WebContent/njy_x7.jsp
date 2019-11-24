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
	        	if(!map.containsKey(6)){
		        	map.put(6, a);
	          	}
	        	else{
	        		a += map.get(6);
	        		map.put(6, a);
	        	}
	        	out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
	        }
		}
        %>
        
		<form action="" name="form" method="post">
        <table width="80%" >
          <tr>
            <td width="10%" rowspan="8"><img src="tp/诺基亚x71.png" width="400" height="400"></td>
            <td colspan="2">诺基亚(NOKIA) 诺基亚X71 全网通版 6GB+64GB 太空黑 蔡司认证 移动联通电信4G智能手机 双卡双待 诺基亚x71</td>
          </tr>
          <tr>
            <td >单价：1888</td> 
			<td>数量 <input type="number" id="number" name="number" min="1" max="999" required  /><td>
          </tr>
          <tr>
            <td colspan="2">颜色：太空黑</td>
          </tr>
          <tr>
            <td colspan="2">版本：6GB + 64GB</td>
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

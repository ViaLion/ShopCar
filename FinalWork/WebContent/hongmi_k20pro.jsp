<%@page import="java.util.HashMap"%>
<%@page contentType="text/html"  pageEncoding="UTF-8"%>
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
	        	if(!map.containsKey(1)){
		        	map.put(1, a);
	          	}
	        	else{
	        		a += map.get(1);
	        		map.put(1, a);
	        	}
	        	out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
	        }
		}
		%>
		<form action="" name="form" method="post">
        <table width="80%" >
          <tr>
            <td width="10%" rowspan="8"><img src="tp/红米k20pro.jpg" width="400" height="400"></td>
            <td colspan="2">小米 (MI) Redmi K20Pro 尊享版12GB+512GB 碳纤黑 骁龙855plus超大内存4800万三摄 全面屏弹出拍照游戏双卡双待移动联通电信全网通4G手机</td>
          </tr>
          <tr>
            <td >单价：3199</td> 
			<td>数量： <input type="number" id="number" name="number" min="1" max="999" value="1" required /><td>
          </tr>
          <tr>
            <td>颜色：火焰红</td>
			<td>名称：红米k20pro</td>
          </tr>
          <tr>
            <td colspan="2">版本：12GB + 512GB</td>
          </tr>
       
          <tr>
              <td width="36%"><input type="submit" value="加入购物车" style="border:none;color:red;width:150px;height:40px;font-size:25px;background:rgba(255, 255, 255, 0.5)"></td>
            <td width="41%"><font size="5px" color="yellow"><a href="gouwuche.jsp">查看购物车</a></font></td>
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

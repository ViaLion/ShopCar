<%@page import="com.ujn.lsw.dao.Action"%>
<%@page import = "com.ujn.lsw.bean.*" %>>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	User user = (User)session.getAttribute("currentUsert");
	boolean result = Action.deleteDing(user.getUsername());
	if(result)
		out.println("<script type='text/javascript'>alert('订单已清空！');window.location.href = \"dingdan.jsp\"</script>");
	else
		out.println("<script type='text/javascript'>alert('清空订单失败！');window.location.href = \"dingdan.jsp\"</script>");
%>
</body>
</html>
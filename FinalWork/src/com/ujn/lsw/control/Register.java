package com.ujn.lsw.control;

import com.ujn.lsw.dao.Action;
import com.ujn.lsw.dao.GetSQL;
import com.ujn.lsw.bean.User;
import com.ujn.lsw.bean.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write("<html>");
		response.getWriter().write("<head>");
		response.getWriter().write("</head>");
		response.getWriter().write("<body style = \"backgroud-image:url('../image/5.jsp');\">");
		
		String nameString = request.getParameter("named");
		nameString = new String(nameString.getBytes("ISO-8859-1"),"UTF-8");
		String userString = request.getParameter("user");
		userString = new String(userString.getBytes("ISO-8859-1"),"UTF-8");
		String pswdString = request.getParameter("pass");
		String repswdString = request.getParameter("repass");
		String ageString = request.getParameter("age");
		ageString = new String(ageString.getBytes("ISO-8859-1"),"UTF-8");
		String sexString = request.getParameter("sex");
		sexString = new String(sexString.getBytes("ISO-8859-1"),"UTF-8");
		String hobbyString[] = request.getParameterValues("item");
		String countryString = request.getParameter("country");
		countryString = new String(countryString.getBytes("ISO-8859-1"),"UTF-8");
		String telString = request.getParameter("tel");
		String emailString = request.getParameter("email");
		
		if (nameString == null || userString == null || pswdString == null || repswdString == null || sexString == null
				|| countryString == null || emailString == null || hobbyString.length == 0 || telString == null || ageString == null) {
			response.getWriter().write("信息不能为空！");
			response.setHeader("refresh", "5;register.jsp");
		}
		else{
			for (int i = 0; i < hobbyString.length; i++) {
				hobbyString[i] = new String(hobbyString[i].getBytes("ISO-8859-1"),"UTF-8");
			}
			
			User user = new User();
			user.setAge(ageString);
			user.setCountry(countryString);
			user.setEmail(emailString);
			user.setHobby(hobbyString);
			user.setName(nameString);
			user.setPassword(pswdString);
			user.setSex(sexString);
			user.setTel(telString);
			user.setUsername(userString);
		
			boolean findout = new Action().Find(user);
			
			if (!pswdString.equals(repswdString)){
				response.getWriter().write("两次密码不一致！");
				response.setHeader("refresh", "3;url = register.jsp");
			}else {
				if (findout == true){
					response.getWriter().write("用户名已存在！");
					response.setHeader("refresh", "3;url = register.jsp");
				}else {
					int result = new Action().Register(user);
					if (result != -1) {
					
						response.getWriter().write("注册成功！");
						
						response.getWriter().write("<br/>");
						response.getWriter().write("<br/>");
						
						response.getWriter().write("注册信息为 ：");
						response.getWriter().write("<br/>");
						response.getWriter().write("用户名：" + userString);
						response.getWriter().write("<br/>");
						response.getWriter().write("密码 ：" + pswdString);
						response.getWriter().write("<br/>");
						response.getWriter().write("姓名：" +  nameString);
						response.getWriter().write("<br/>");
						response.getWriter().write("性别：" + sexString);
						response.getWriter().write("<br/>");
						response.getWriter().write("年龄：" + ageString);
						response.getWriter().write("<br/>");
						response.getWriter().write("城市：" + countryString);
						response.getWriter().write("<br/>");
						response.getWriter().write("爱好：");
						for (int i = 0; i < hobbyString.length; i++){

							if (i == hobbyString.length - 1)
							{
								response.getWriter().write(hobbyString[i]);
								break;
							}
							response.getWriter().write(hobbyString[i] + "、");
						}
						response.getWriter().write("<br/>");
						response.getWriter().write("电话号码：" + telString);
						response.getWriter().write("<br/>");
						response.getWriter().write("电子邮箱：" + emailString);
						response.setHeader("refresh", "3;url = login.jsp");
					}
					else {
						response.getWriter().write("注册失败");
						response.setHeader("refresh", "3;url = register.jsp");
					}
				}
		
			}
		}
		response.getWriter().write("</body>");
		response.getWriter().write("</html>");
	}
}



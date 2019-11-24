package com.ujn.lsw.control;

import com.ujn.lsw.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ujn.lsw.dao.Action;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		 String name =request.getParameter("user");
		 String password=request.getParameter("password");	 
		 
//		 System.out.println(name);
//		 System.out.println(password);
		 
		 HttpSession session = request.getSession();
		 com.ujn.lsw.bean.User user=new com.ujn.lsw.bean.User(); 
		 
		 user.setUsername(name);
		 user.setPassword(password);
		 
		 System.out.println(user.getUsername());
		 System.out.println(user.getPassword());
		 boolean flag=new Action().Login(user);
		 session.setAttribute("currentUsert", user);
		 
		 if(flag == false) {
			 response.getWriter().write("用户名或密码错误！请重新输入！");
			 response.setHeader("refresh", "3;login.jsp");
		 }else {
			 request.getRequestDispatcher("./success.jsp").forward(request, response);	 	 
		 }
		
	}

}

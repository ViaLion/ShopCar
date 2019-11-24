package com.ujn.lsw.control;

import com.ujn.lsw.*;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ujn.lsw.bean.User;
import com.ujn.lsw.dao.Action;

/**
 * Servlet implementation class create
 */
public class create extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unchecked")
	@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");
			
			HttpSession session = request.getSession();
			HashMap<Integer, Integer>map = (HashMap<Integer, Integer>)session.getAttribute("map");
			com.ujn.lsw.bean.User user = (com.ujn.lsw.bean.User)session.getAttribute("currentUsert");
			
			if (user == null || map == null) {
				user = new User();
				map = new HashMap<Integer, Integer>();
				System.out.println("user为空");
			}
			if (user != null && map != null) {
				System.out.println(user.getUsername());
				System.out.println("user不为空");
				
				for (int i = 1; i < 11; i++) {
					if(map.containsKey(i)) {
						
						if (map.get(i) != null) {
							System.out.println(i);
							System.out.println(map.get(i));
							boolean cre = new Action().createOrder(user.getUsername(), i, map.get(i));
							if (cre) {
								System.out.println("创建成功");
								response.getWriter().write("<script type='text/javascript'>alert('订单提交成功！');window.location.href = \"gouwuche.jsp\"</script>");
							}
							else {
								System.out.println("创建失败");
								response.getWriter().write("<script type='text/javascript'>alert('订单提交失败！');window.location.href = \"gouwuche.jsp\"</script>");
							}
						}
					}
				}
			}
	}

}

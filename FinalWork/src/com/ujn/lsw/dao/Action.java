package com.ujn.lsw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLInput;
import java.sql.Statement;
import java.util.HashMap;

import com.sun.scenario.effect.impl.prism.ps.PPSBlend_ADDPeer;
import com.ujn.lsw.bean.Good;
import com.ujn.lsw.bean.User;

public class Action {

	private static Connection conn;
	private static PreparedStatement ps=null;;
	private static ResultSet rs=null;
	private static Statement statement = null;
	
	public boolean Login(User user) {
		
		conn = GetSQL.getConnection();
		String sql="select * from Admin where uname=? and pwd=?";
		
		try {		
			
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			rs=ps.executeQuery();
		
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		try {
			if(rs.next()) {
				System.out.println("4");
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return false;
	}
	
	public int Register(User user) {
		
		conn = GetSQL.getConnection();
		
		String sql="insert into Admin(uname,pwd,name,age,sex,hobby,city,tel,email) values(?,?,?,?,?,?,?,?,?)";
		try {		
			ps=conn.prepareStatement(sql);
			System.out.println("这里没问题");
			ps.setString(1, user.getUsername());
			System.out.println("这里没问题");
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getName());
			ps.setString(4, user.getAge());
			ps.setString(5, user.getSex());
			ps.setString(6, user.getHobby());
			ps.setString(7, user.getCountry());
			ps.setString(8, user.getTel());
			ps.setString(9, user.getEmail());
			
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;
	}
	
	public boolean Find(User user) {
		conn = GetSQL.getConnection();
		String sql="select * from Admin where uname=?";
		
		try {		
			
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			rs=ps.executeQuery();
		
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(rs.next()) {
				System.out.println("用户名存在");
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("用户不存在");
		return false;
	}
	
	public Good findGood(int gid) {
		Good goods = new Good();
		
		conn = GetSQL.getConnection();
		String sqlString = "select * from Goods where gid=?";
		try {
			ps = conn.prepareStatement(sqlString);
			System.out.println("这里没有问题");
			ps.setLong(1, gid);
			System.out.println("这里没有问题");
			rs = ps.executeQuery();
			System.out.println("这里没有问题");
			
			while (rs.next()) {
				System.out.println("这里没有问题");
				goods.setNameString(rs.getString(2));
				System.out.println("这里也没有问题");
				goods.setPriceString(rs.getInt(3));
				System.out.println("这里也没有问题");
				goods.setVersonString(rs.getString(4));
				System.out.println("这里也没有问题");
				goods.setColorString(rs.getString(5));
				System.out.println("这里也没有问题");
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("连接失败");
		}
		
		return goods;
	}
	
	public boolean createOrder(String user,int gid,int number) {
		conn = GetSQL.getConnection();
		
		//insert into car(uname,gid,number) values(?,?,?)
		
		try {
			String sqlString = "insert into Dingdan(uname,gid,number) values('" + user +"'," + gid + "," + number + ")";
//			ps.setString(1, user);
//			ps.setInt(2, gid);
//			ps.setInt(3, number);
			statement = conn.createStatement();
			statement.executeUpdate(sqlString);
//			ps.executeUpdate();
//			ps.close();
			
			System.out.println("订单创建成功！");
			return true;
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("订单创建出现了问题！");
		}
		
		System.out.println("订单创建失败！");
		return false;
	}
	
	public static HashMap<Integer, Integer> findDingdan(String uname) {
		HashMap<Integer, Integer> dingdanHashMap = new HashMap<Integer, Integer>();
		conn = GetSQL.getConnection();
		
		String sqlString = "select gid,number from Dingdan where uname=?";
		
		try {
			ps = conn.prepareStatement(sqlString);
			ps.setString(1, uname);
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				if (dingdanHashMap == null) {
					dingdanHashMap.put(rs.getInt("gid"), rs.getInt("number"));
				}
				else {
					if (dingdanHashMap.containsKey(rs.getInt("gid"))) {
						int dingnumber = dingdanHashMap.get(rs.getInt("gid"));
						dingnumber += rs.getInt("number") ;
						dingdanHashMap.put(rs.getInt("gid"), dingnumber);
					}
					else {
						dingdanHashMap.put(rs.getInt("gid"), rs.getInt("number"));
					}
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dingdanHashMap;
	}
	
	public static boolean deleteDing(String name) {
		conn = GetSQL.getConnection();
		
		String sqlString = "delete from Dingdan where uname = '" + name + "'";
		
		try {
			statement = conn.createStatement();
			statement.executeUpdate(sqlString);
//			ps.close();
			
			System.out.println("删除成功");
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}

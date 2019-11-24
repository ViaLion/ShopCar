package com.ujn.lsw.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetSQL {
	
	private static Connection conn;
	private static String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String dbURL="jdbc:sqlserver://localhost:1433;DatabaseName=Shopping";
	private static String userName="sa";
	private static String userPwd="king990711";
	
	public static Connection getConnection(){
		try {
			System.out.println("0");
			Class.forName(driverName);
			System.out.println("1");
			conn=DriverManager.getConnection(dbURL, userName, userPwd);
			System.out.println("2");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}



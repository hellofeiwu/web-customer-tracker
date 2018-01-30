package com.luv2code.testdb;

import java.sql.Connection;
import java.sql.DriverManager;


public class TestJdbc {

	public static void main(String[] args) {
		String jdbcUrl = "jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false";
		String user = "springstudent";
		String pass = "springstudent";
		
		try {
			Connection myConn = DriverManager.getConnection(jdbcUrl, user, pass);
			System.out.println("connected!!!");
		}catch (Exception exc) {
			exc.printStackTrace();
		}

	}

}

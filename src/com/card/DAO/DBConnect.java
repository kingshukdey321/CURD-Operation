package com.card.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	
	
	public static Connection getOracleConnection() {
		Connection oraclecon = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			oraclecon = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "J2EE", "abc123");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return oraclecon;
	}

	public static Connection getMySQLConnection() {
		Connection mysqlcon = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			mysqlcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/card", "root", "root");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return mysqlcon;
	}

}

	
	


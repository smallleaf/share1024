package com.test.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static final String DBDRIVER="com.mysql.jdbc.Driver";
	
	private static final String DBURL="jdbc:mysql:///tiger";
	
	private static final String DBUSER ="root";
	
	private static final String DBPASSWORD="root";
	
	private Connection connection=null;
	
	public DBConnection(){
		try {
			Class.forName(DBDRIVER);
			this.connection = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	
}

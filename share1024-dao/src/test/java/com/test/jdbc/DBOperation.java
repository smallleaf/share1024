package com.test.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class DBOperation {
	
	private Connection connection =null;
	private PreparedStatement preparedStatement = null;
	@Before
	public void before(){
		System.out.println("=========before===========");
		connection = new DBConnection().getConnection();
	}
	
	@Test
	public void add1() throws SQLException{
		Statement statement  = connection.createStatement();
		String sql ="insert into user  values('yesheng','yesheng')";
		statement.execute(sql);
		statement.close();
	}
	
	@Test
	public void add() throws SQLException{
		String sql ="insert into user values(?,?)";
		preparedStatement= connection.prepareStatement(sql);
		preparedStatement.setString(1, "yesheng2");
		preparedStatement.setString(2, "yesheng2-password");
		preparedStatement.executeUpdate();
	}
	
	@Test
	public void update() throws SQLException{
		String sql ="update user set password=? where username=?";
		preparedStatement= connection.prepareStatement(sql);
		preparedStatement.setString(1, "=========");
		preparedStatement.setString(2, "yesheng2");
		preparedStatement.executeUpdate();
	}
	
	@Test
	public void find() throws SQLException{
		String sql= "select * from user";
		preparedStatement= connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		ResultSetMetaData rsmd = resultSet.getMetaData();
		int nrOfColumns = rsmd.getColumnCount();
		System.out.println("nrOfColumns========="+nrOfColumns);
		while(resultSet.next()){
			System.out.println(resultSet.getString(1));
			System.out.println(resultSet.getString(2));
		}
	}
	
	@After
	public void after(){
		System.out.println("=========after===========");
		try {
			if(connection!=null){
				connection.close();
			}
			if(preparedStatement!=null){
				preparedStatement.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

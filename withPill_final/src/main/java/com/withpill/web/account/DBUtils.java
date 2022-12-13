package com.withpill.web.account;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtils {
	public static void main(String[] args) {
		//method 옆에 throws가 있다면 꼭 try catch 구문을 이용해서 메소드를 이용해야 한다. 
		try {
			System.out.print("@at DBUtils main() : ");
			getCon();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getCon() throws Exception {
		final String DB_NAME = "account";
		final String DRIVER = "oracle.jdbc.driver.OracleDriver";
		final String URL = "jdbc:oracle:thin:@localhost:1521:xe"; 
		final String USER_NAME = "withpill";
		final String PASSWORD = "withpill";
		
		//forName()과 getConnection()도 thorws가 있는 메소드라서 getCon()메소드에서 다 묶어서 throws하는 것이다. 
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
		System.out.println("@DBUtils DBUtils.getCon() DONE");
		
		return con;
	}
	
	//con이 ps를 만들어주고 ps가 rs 만들어준다. 
	//ps : CTR + SHITF + F9 (쿼리문 완성(setString()메소드)과 쿼리문 실행(executeUpdate()메소드)을 담당한다.)
	//rs : SELECT 결과로 생긴 테이블 그 자체가 들어간다. 
	
	public static void close(Connection con, PreparedStatement ps) { close(con, ps, null); }
	
	public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
		if(rs != null) {
			try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		if(ps != null) {
			try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		if(con != null) {
			try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
	}
}

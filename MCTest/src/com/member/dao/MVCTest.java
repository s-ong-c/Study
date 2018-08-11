		package com.member.dao;
		import java.sql.Connection;
		import java.sql.PreparedStatement;

		import javax.naming.Context;
		import javax.naming.InitialContext;
		import javax.sql.DataSource;
		import util.DBManager;

import util.DBManager;

		class User{
		
			public String id;
			public String pwd;
			public String name;
			public String email;
		
			public User() {
				super();
		
			}
			public String getId() {
				return id;
			}
		
			public void setId(String id) {
				this.id = id;
			}
		
			public String getPwd() {
				return pwd;
			}
		
			public void setPwd(String pwd) {
				this.pwd = pwd;
			}
		
			public String getName() {
				return name;
			}
		
			public void setName(String name) {
				this.name = name;
			}
		
			public String getEmail() {
				return email;
			}
		
			public void setEmail(String email) {
				this.email = email;
			}
			public User(String id, String pwd, String name, String email) {
				super();
		
				this.id = id;
				this.pwd = pwd;
				this.name = name;
				this.email = email;
			}
		
		
		
			@Override
			public String toString() {
				return " [ id=" + id + ", pwd=" + pwd + ", name=" + name  
						+  ", email=" + email  +
						"]";
			}
		
		}
		
		
		
		
		
		public class MVCTest {

			
			
			public static Connection getConnection(){
				
				Connection conn = null;
				
				try {
					Context initContext = new InitialContext();
					Context envContext  = (Context)initContext.lookup("java:/comp/env");
					DataSource ds = (DataSource)envContext.lookup("jdbc/TestDB");

					conn = ds.getConnection();
					
				} catch (Exception e) {
					e.printStackTrace();
					
				}
				return conn;
			}
			
			public static void main(String[] args) {
				
				

			User u = new User("ff22","1234","song","aa@naver.com");
			System.out.println(u+" 값 ");
			insertUser(u);
				}

	static int insertUser(User u){
			System.out.println("여기는 ");
			String sql ="insert into MEMBER(MEMBERID,PASSWORD,NAME,EMAIL) values"
					+ "(?,?,?,?)";
			int result = 0;
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try{
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, u.getId());
				pstmt.setString(2, u.getPwd());
				pstmt.setString(3, u.getName());
				pstmt.setString(4, u.getEmail());
				pstmt.executeUpdate();
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				DBManager.close(conn, pstmt);
			}
			return 0;
	}
		
		public void updateMember(User u){
			String sql = "update member set PASSWORD=?, NAME=?, EMAIL=?";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try{
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, u.getPwd());
				pstmt.setString(2, u.getName());
				pstmt.setString(3, u.getEmail());
		
				
				pstmt.executeUpdate();
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				DBManager.close(conn, pstmt);
			}
		}

		

	}
		
		

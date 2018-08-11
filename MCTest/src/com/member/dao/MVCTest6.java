//package com.member.dao;
//
//import java.sql.*;
//import java.util.List;
//
//import com.mysql.jdbc.Connection;
//
//import util.DBManager;
//
//public class MVCTest6 {
//
//    private String url="jdbc:mysql://localhost:3306";
//
//    private String id="root";
//
//    private String pass ="1122";
//
//    
//
//    
//
//    private Connection getConnection() {
//
//     Connection con = null;
//
//     /*
//
//      * 1. JDBC Driver 클래스를 메모리에 적재시킨다.
//
//      * 2. DriverManager 클래스의 getConnection 메소드를
//
//      *      호출해서 DB Server와 연결을 맺는다.
//
//      *    연결이 성공하면 Connection 객체가 반환된다.
//
//      *    연결에 실패하면 Exception이 발생한다.
//
//      *    Exception이 발생하는 원인, 즉 연결이 안되는
//
//      *    이유는
//
//      *    (1) DB 서버가 실행되지 않고 있거나
//
//      *    (2) 방화벽 때문에 DB 서버에 연결할 수 없거나
//
//      *    (3) DB 서버에 연결할 때는 DB 계정을 이용해야 하는데
//
//      *        그 DB 계정이 없거나 아니면
//
//      *        암호가 틀렸거나 ... 이런경우.
//
//      *    (4) JDBC 서버 URL에 오타가 있는 경우
//
//      */
//     // JDBC 드라이버를 메모리에 적재
//
//     // JDBC 드라이버 이름은 DBMS마다 다르다.
//
//     try {
//
//      Class.forName("com.mysql.jdbc.Driver");
//
//      System.out.println("JDBC 드라이버 메모리 적재 성공");
//      
//      con =(Connection) DriverManager.getConnection(url, id, pass);
//      System.out.println("연결 성공");
//
//         }catch(Exception e) {
//
//      e.printStackTrace();
//
//     }
//
//     return con;
//
//    }
//
//
//   public static void main(String[] args) {
//
//
//
//	     List<User> list = selectAllUsers();
//
//	     System.out.println(list);
//
//	    
//
//	   }
//
//
//static List<User> selectAllUsers() {
//
///*
//
//  selectAllUsers메서드를 작성하시오.
//
//*/   
//	
//	return null;
//
//}
//
//
//
//static int deleteUser(String userId) {
//
///*
//
//   deleteUser메서드를 작성하시오.
//
//*/
//
//	return 0;
//
//}
//
//
//
//static User selectUser(String userId) {
//
///*
//
// selectUser()메서드를 작성하시오. -
//
//*/
//	return null;	
//}
//
//
//
//static int updateUser(User u) { 
//
///*
//
//    updateUser()메서드를 작성하시오.(PreparedStatement)
//
//*/
//
//		return 0;
//}
//
//
//
//static int insertUser(User u){
//	
//	Connection con = get
//	System.out.println("여기는 ");
//	String sql ="insert into MEMBER(MEMBERID,PASSWORD,NAME,EMAIL) values"
//			+ "(?,?,?,?)";
//	int result = 0;
//	Connection con = null;
//	PreparedStatement pstmt = null;
//	
//	try{
//		con = DriverManager.getConnection();
//		pstmt = con.prepareStatement(sql);
//		pstmt.setString(1, u.getId());
//		pstmt.setString(2, u.getPwd());
//		pstmt.setString(3, u.getName());
//		pstmt.setString(4, u.getEmail());
//		pstmt.executeUpdate();
//		
//	}catch(Exception e){
//		e.printStackTrace();
//	}finally{
//		DBManager.close(con, pstmt);
//	}
//	return 0;
//}
//}
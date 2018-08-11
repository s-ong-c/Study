package until;

import java.sql.ResultSet;

import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.Connection;

//public class DBManager{
//
//public static void main(String[] args) {
//    test_jdbc_connect();
//   } // main()의 끝
//  
//   static void test_jdbc_connect() {
//    String DB_URL = "jdbc:mysql://localhost:3306"; // DB이름인 book_ex를 적절히 변경 
//    String DB_USER = "root";  // DB의 userid와 pwd를 알맞게 변경 
//    String DB_PASSWORD = "1122"; 
//    
//    Connection conn = null;
//    Statement stmt = null;
//    ResultSet rs = null;
//    
//    String query = "SELECT now()"; // 시스템의 날짜를 출력한다.
//    try {
//     // 드라이버를 로딩한다.
//     Class.forName("com.mysql.jdbc.Driver");
//     
//     conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 데이터베이스의 연결을 설정한다.
//     stmt = conn.createStatement();             // Statement를 가져온다.
//     rs = stmt.executeQuery(query); // SQL문을 실행한다.
//     
//     while (rs.next()) { 
//      String curDate = rs.getString(1);
//      System.out.println(curDate); 
//     }
//    } catch ( Exception e ) {
//     e.printStackTrace();
//    } finally {
//     try {
//      rs.close();
//      stmt.close();
//      conn.close();
//     } catch ( SQLException e ) {}
//    }
//   }
//} // 클래스의 끝
/*
	DAO에서 사용할 dbcp연동,  try~catch()의 반복적인 사용 등을
	편리하게 쓸 수 있도록 구성해 놓은 클래스
 */

public class DBManager {
	public static Connection getConnection(){
		Connection conn = null;
		try{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/TestDB");
			conn = ds.getConnection();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	public static void close(Connection conn, Statement stmt, ResultSet rs){
		try{
			rs.close();
			stmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void close(Connection conn, Statement stmt){
		try{
			stmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}


//package jdbc;
//
//import java.sql.SQLException;
//
//import com.mysql.jdbc.Connection;
//
//public class JDBCTest {
//
//}
//class Dao {
//	 Connection conn;
//	 String tableName = "com.mysql.jdbc.Driver";
//	 
//	 Dao() {
//	  this(null, "");
//	 }
//	 
//	 Dao(String tableName) {
//	  this(null, tableName );
//	 }
//	 
//	 Dao(Connection conn, String tableName) {
//	  this.tableName = tableName;
//	   /* 메서드를 완성하시오. */
//	 }
//	 
//	 void rollback(){
//	  if(conn!=null) {
//	   try {
//	    conn.rollback();
//	   } catch(SQLException e){
//	    
//	   }
//	  }
//	 }
//	 
//	 void close(AutoCloseable... acs) {
//
//	   /* 메서드를 완성하시오. */
//
//
//	}
//
//
//
//	class UserDao extends Dao {
//
//	  /* 작성하시오. */
//
//	}
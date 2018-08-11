<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="1">
	<tr>
		<td>이름 </td><td>아이디</td><td>이메일</td>
	</tr>
	
	<%
		//1. jdbc 	드라이버 코딩
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs= null;
		
		try{
			String jdbcDriver = "jdbc:mysql://localhost:3306/chap14";
			
			String dbUser= "root";
			String dbPass = "1122";
			
			String query = "select * from MEMBER order by NAME`";
			
			//2. 데이터 베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			
			 // 
			
			//3.statement 생성
			stmt = conn.createStatement();
			 
			 
			
			//4. 쿼리 생성 
			rs = stmt.executeQuery(query);
			//5. 쿼리 실행 및 결과 출력
			
			while(rs.next()){
				%>
		<tr>
					<td><%=rs.getString("NAME") %></td>
					<td><%=rs.getString("MEMBERID") %></td>
					<td><%=rs.getString("EMAIL") %></td>
		</tr>
		<% 
				}
		}catch(SQLException ex){
				out.println(ex.getMessage());
				ex.printStackTrace();
		}finally{
			
			if(rs !=null)try{rs.close();}catch(SQLException ex){}
			if(stmt !=null)try{stmt.close();}catch(SQLException ex){}
			
		//7. 커넥션 종료
		 	if(conn !=null)try{conn.close();}catch(SQLException ex){}
		
		}
	%>
	
	
	</table>
















</body>
</html>
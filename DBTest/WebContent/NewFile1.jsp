<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
    <% String MEMBERID = request.getParameter("MEMBERID") ;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 </title>
</head>
<body>
	
	
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
			
			String query = "select * from MEMBER MEMBER";
			
			//2. 데이터 베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			stmt = conn.createStatement();

			rs = stmt.executeQuery(query);
		
			if(rs.next()){
				%>
				<table  border="1">
					<tr>
						  <td>이름</td><td><%=rs.getString("NAME") %></td>
						</tr>
					<tr>
						<td>아이</td><td><%=rs.getString("MEMBERID") %></td>
						</tr>
						<tr>
							<td>비밀번호 </td><td><%=rs.getString("PASSWORD") %></td>
						</tr>
					<tr>
					
						<td>이메</td><td><%=rs.getString("EMAIL") %></td>
					</tr>
				</table>
		<% 
		
			}else{
				
				%>
				<%= MEMBERID %>에 해당하는 정보가 존재하지 않습니다.
			<%	
			
			}
		}catch(SQLException ex){
			
			%>
		에러발생 	<%=ex.getMessage() %>
		<%
				out.println(ex.getMessage());
				ex.printStackTrace();
		}finally{
			
			if(rs !=null)try{rs.close();}catch(SQLException ex){}
			if(stmt !=null)try{stmt.close();}catch(SQLException ex){}
		 	if(conn !=null)try{conn.close();}catch(SQLException ex){}
		
		}	
	%>
	
	

</body>
</html>
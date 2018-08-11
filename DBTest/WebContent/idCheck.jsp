<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  <%@ page import ="java.sql.*" %>
<%-- 
<% String MEMBERID = request.getParameter("MEMBERID") ;
		String id = request.getParameter("id");

%> --%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>아이디 중복확인</h2>
<%-- <%
		//1. jdbc 	드라이버 코딩
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs= null;
		
		try{
			String jdbcDriver = "jdbc:mysql://localhost:3306/chap14";
			
			String dbUser= "root";
			String dbPass = "1122";
			
			String query = "select * from MEMBER MEMBERID";
			
			//2. 데이터 베이스 커넥션 생성
			conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			stmt = conn.createStatement();

			rs = stmt.executeQuery(query);
		
			if(rs.next()){
	
		%> --%>
		<form action="MemberServlet" method="get" name="frm">
	
	아이디 <input type="text" name="id" value="${id }">
	<input type="hidden" name="command" value="id_check">
	<input type="submit" value="중복 체크"><br><br>
	
	<c:if test="${result ==1 }">
		<script type="text/javascript">
			opener.document.frm.id.value="";
		</script>
		${id }는 사용 중입니다.
	</c:if>
	
	<c:if test="${result == 0 }">
		${id }는 사용 가능한 아이디 입니다.
		<%-- #28] 스크립트로 가서 join.jsp에 userid를 올려주도록 하자! --%>
		<input type="button" value="사용" onclick="idOk('${id}')">	
	</c:if>
	
</form>
<%-- <form action="memberInsert.jsp" method="post" name="frm">
	
	아이디 <input type="text" name="id" value="<%if(rs.getString("MEMBERID") !=id){}%>">
	<input type="hidden" name="command" value="id_check">
	<input type="submit" value="중복 체크"><br><br>
	<input type="button" value="사용" > --%>	
	<%-- <%	}else{
				
		
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
	%> --%>
	
</form>
</body>
</html>
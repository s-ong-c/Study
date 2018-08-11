<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Input"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import=" javax.servlet.RequestDispatcher" %>
<%@page import="javax.servlet.http.*"%>
       <%
 	String id=request.getParameter("id");
    String pwd = request.getParameter("pwd");
   	String id_rem = request.getParameter("id_rem");
   	
	
   	%>
	
  
		
   	<%


	
   		System.out.println(id_rem+"check 되었는감 ");
    
//w   	Cookie cooId = null;
   	
	 Cookie cooId = new Cookie("cooId",id);
    Cookie cooPw = new Cookie("cooPw",pwd);
    
     cooId.setMaxAge(60);
   	 cooPw.setMaxAge(60);
    
   	response.addCookie(cooId);
    response.addCookie(cooPw);  
    if(id_rem==null){
    	  cooId = new Cookie("cooId",null);
    	  cooId.setMaxAge(0);
    	 	response.addCookie(cooId);
    }

    
    /* if(id_rem !=null && id_rem.trim().equals("on")){
    		cooId = new Cookie("id",id);
    		cooId.setMaxAge(60);
    		response.addCookie(cooId);
    }
    else{
    	cooId = new Cookie("id",null);
    	cooId.setMaxAge(0);
    	response.addCookie(cooId);
    } */
   

    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="nav.css">   <link rel="stylesheet" href="feed.css">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
</head>
<body>
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

    <nav class="navigation">
        <span class="navigation__wrapper">
        <div class="navigation__column">
            <a href="feed.html">
                <img src="images/logo.png" />
            </a>
        </div>
        <div class="navigation__column">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Search">
        </div>
        <div class="navigation__column">
            <a href="explore.html" class="navigation__link">
                <i class="fa fa-compass"></i>
            </a>
            <a href="#" class="navigation__link">
                <i class="fa fa-heart-o" id="heart"></i>
            </a>
            <a href="login.jsp" class="navigation__link">
                <i class="fa fa-user-o"></i>
            </a>
        </div>
        </span>
    </nav>
       <main id="feed">
            <article class="photo">
                <header class="photo__header">
                    <img src="images/user.jpg" alt="martinacordioli" class="photo__user">
                    <div class="photo__info">
                        <span class="photo__author">${vo.id }<%=id %></span>
                      
                    </div>
                </header>
                <img src="images/_DSC4900.jpg" class="photo__image" />
                <div class="photo__main">
                    <div class="photo__actions">
                        <i class="fa heart fa-heart-o fa-2x"></i>
                        <i class="fa fa-comment-o fa-2x"></i>
                    </div>

                    <span class="photo__likes"><span class="photo__likes-number">175</span> likes</span>

                    <ul class="photo__comments">
                    <p>#사진#포토그래퍼#하늘공원#서울#나들이#맞팔#일반인모델#출사#</p>
                        <p class="photo__comment">
                            <span class="photo__comment-author"></span> 사진 쩔어
                        </p>
                        <p class="photo__comment">
                            <span class="photo__comment-author">hye_min:</span>우리 소통해
                        </li>
                        <li class="photo__comment">
                            <span class="photo__comment-author">kingdom</span>저희 맞팔해
                        </p>
      
                    </ul>
                    <span class="photo__date">13 hours ago</span>
                    <div class="photo__add-comment-container">
                        <textarea class="photo__add-comment" name="comment" placeholder="Add a comment..."></textarea>
                        <i class="fa fa-ellipsis-h"></i>
                    </div>
                </div>
            </article>
            
        </main>
        		
    
</body>

</html>
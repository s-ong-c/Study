<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Input"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import=" javax.servlet.RequestDispatcher" %>
<%@page import="javax.servlet.http.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page  import= "javax.servlet.http.Cookie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
    <%
 	String id=request.getParameter("id");
    String pw = request.getParameter("pw");
   	String id_rem = request.getParameter("id_rem");
   	
	if((id.equals("aaaa")&&pw.equals("1234")) || (id.equals("bbbb")&&pw.equals("1111"))) {
		
	}else {
   	%>
	
   		<script type="text/javascript">
 		  alert("id 또는 비번이 틀렸습니다");     
 		      setTimeout(function(){location.href="login.jsp"},600);
 		    
</script>
		
   	<%


	}
   		System.out.println(id_rem+"check 되었는감 ");
    
//w   	Cookie cooId = null;
   	
	 Cookie cooId = new Cookie("cooId",id);
    Cookie cooPw = new Cookie("cooPw",pw);
    
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
<body>
<h2>로그인 중 ..... </h2>
<%-- <%=cooId.getValue() %>
<%=cooPw.getValue() %> --%>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
    $(function () {
      $("body").hide();
      $("body").fadeIn(1000);
     
      setTimeout(function(){$("body").fadeOut(1000);},1000);
      setTimeout(function(){location.href="instar_main.jsp"},2000);
    })
  </script>
</body>
</html>
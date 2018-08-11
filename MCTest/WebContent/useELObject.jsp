<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    		request.setCharacterEncoding("UTF-8");
    
    
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	URI : ${pageContext.request.requestURI }<br>
	request	의 name  속성 : ${requestScope.name } <br>
	code 파라미터 : ${param.code}<br>
	
	
</body>
</html>
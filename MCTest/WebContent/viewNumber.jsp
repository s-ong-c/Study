<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
   
   <%
   		request.setAttribute("price", 12345);
   
   
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

오늘은 <b>${elfunc:formatNumber(price,'#,##0')}</b>입니다. 


</body>
</html>
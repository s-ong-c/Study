<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= session.getAttribute("name") %>(<%=session.getAttribute("id") %>)님 반갑습니다.<br>
즐거운 시간 되세요.
<a href="05_session_invalidate.jsp">[로그아웃]</a>

</body>
</html>
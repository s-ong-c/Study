<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals(pw)){
		String name ="홍길동";
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		
		response.sendRedirect("05_sessionMain.jsp");
		
	} else{
%>
	<script>
		alert("로그인에 실패했습니다.");
		location.href="05_sessionLoginForm.jsp";
	</script>
	
<%	
}
%>

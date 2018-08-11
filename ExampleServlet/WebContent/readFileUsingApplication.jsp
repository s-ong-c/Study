<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import  ="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String resourcePath = "/day10.txt";
%>
<%=application.getRealPath(resourcePath) %>
<br>
-----------<br>
<%= resourcePath %>의 내용 <br>
---------------------------------<br>
<%
	char [ ] buff = new char[128];
	int len = -1;
	
	/* String filePath = "/Users/songminseok/Desktop/tomcat8/webapps/chap05/message/day10.txt"; */
	/*String filePath = "/Users/songminseok/eclipse-workspace/ExampleServlet/WebContent/day10.txt";*/
	
	try(InputStreamReader fr = new InputStreamReader(
			application.getResourceAsStream(resourcePath),"UTF-8")){
		while((len = fr.read(buff)) != -1){
			out.print(new String(buff,0,len));
			}
		}catch(IOException ex){
			out.println("익셉션 발생: "+ex.getMessage());
		}
	
%>
</body>
</html>
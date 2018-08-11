<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>아래 내용을 입력해 주세요</h3>
	<form action="/servletTest/RadioServlet" method="post">
		<label for="gender">성별 : </label>
		<input type="radio" id="gender" name="gender" value="남자" checked>남자
		<input type="radio" id="gender" name="gender" value="여자">여자
		<br>
		<label for="chk_mail">메일 정보 수신 여부 : </label>
		<input type="radio" id="chk_mail" name="mail" value="yes" checked>수신
		<input type="radio" id="chk_mail" name="mail" value="no" >거부
		<br>
		<br>
		<label for="content">간단한 가입 인사말을 써주세요</label>
		<br>
		<textarea id="content"  rows="4" cols="20" name="content"></textarea><br>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- #80] ${board} 수정할 내용을 먼저 보여주자! -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/board.css"> 
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
<h1>게시글 수정</h1>
<form action="BoardServlet" method="post" name="frm">
	<input type="hidden" name="command" value="board_update"/>
	<input type="hidden" name="num" value="${board.num }"/>
	<table>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="name" value="${board.name }">* 필수</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pass">* 삭제 수정시 필요</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" value="${board.email }"></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" value="${board.title }">* 필수</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="70" rows="15" name="content">${board.content }</textarea></td>
		</tr>
	</table>
	<br>
	<br>					
	<!-- #81] board_update + 글번호 로 이동 -->
	<input type="submit" value="수정" onclick="return boardCheck()"/>
												
	<input type="reset" value="다시작성" />

	<input type="button" value="목록보기" onclick="location.href='BoardServlet?command=board_list'"/>
</form>
</div>


</body>
</html>
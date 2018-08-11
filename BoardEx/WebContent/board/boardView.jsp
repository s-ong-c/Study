<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--#48] BoardViewAction에서 왔다  board 
		${board.num}  ${board.name}
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<h1>상세글 보기</h1>
		<table>
			<tr>
				<th>작성자</th>
				<td>${board.name }</td>
				<th>이메일</th>
				<td>${board.email}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${board.writedate }"/></td>
				<th>조회수</th>
				<td>${board.readcount}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">${board.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><pre>${board.content}</pre></td>
			</tr>
		
		</table>
		<br>
		<br>
		<!-- #49] 수정버튼 눌렀을 때,  스크립트 함수 open_win()으로 가자 -->
		<input type="button" value="수정" 
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')"	>
		
		<input type="button" value="삭제" 
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')"	>
		
		
		
		<input type="button" value="게시글 리스트" onclick="location.href='BoardServlet?command=board_list'">
		
		<input type="button" value="글쓰기" onclick="location.href='BoardServlet?command=board_write_form'">
		
	</div>
</body>
</html>






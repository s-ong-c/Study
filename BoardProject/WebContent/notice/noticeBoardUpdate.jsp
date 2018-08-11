<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>게시글 등록</h1>
		<form action="NoticeBoardServlet" method="post" name="frm">
			<input type="hidden" name="command" value="notice_board_update" /> <input
				type="hidden" name="num" value="${notice_board.num}" />
			<table>
				<tr>
					<th>닉네임</th>
					<td><input type="text" name="nick" value="${member.nick }"
						readonly></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title"
						value="${notice_board.title }"> *필수 항목</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="15" cols="10" name="content">${notice_board.content }</textarea></td>
				</tr>
			</table>
			<br> <br> <input type="submit" value="수정 완료"
				onclick="location.href='NoticeBoardServlet?command=notice_board_update'" />
			<input type="button" value="목록보기"
				onclick="location.href='NoticeBoardServlet?command=notice_board_list'" />

		</form>
	</div>

</body>
</html>


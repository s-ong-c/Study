<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- #13] BoardListAction에서 왔다.  boardList를 들고 왔다.  ${boardList}el에 담아서 쓰자 -->
<!-- #37] 글쓰고 왔다. => 제목을 클릭하면 세부 글 보기(글 한건) -->
<!-- #91] 글 수정하고 왔다   삭제로 넘어가자  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/board.css"> 
</head>
<body>
	<div id="wrap" align="center">   
		<h1>게시글 리스트</h1>
		<table class="list">		<%--  .list{ } --%>
			<tr>
				<td colspan="5" style="border: white; text-align: right;">
				<%--#14] 서블릿  board_write_form 패턴을 들고 간다. --%>
				<a href="BoardServlet?command=board_write_form">글쓰기</a>
				
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="boardList" items="${boardList }">
				<tr>
					<td>${boardList.num }</td>
					<!-- #38] 글 한건 보기 하러 가자 -->
					<td><a href="BoardServlet?command=board_view&num=${boardList.num }">${boardList.title }</a></td>
					<td>${boardList.name }</td>
					<td><fmt:formatDate value="${boardList.writedate }" /> </td>
					<td>${boardList.readcount }</td>
				</tr>
			</c:forEach>
		</table>
		
	
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- #45] main.jsp 로 이동 -->
<c:if test="${empty loginUser }">
   <jsp:forward page="login.do"></jsp:forward>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="member.js"></script>
</head>
<body>
<h2>회원 전용 페이지</h2>
<form action="logout.do">
   <table>
      <tr>
         <td>안녕하세요 ${loginUser.name }(${loginUser.userid })님</td>
      </tr>
      <tr>
         <td>
            <!-- #46] LogoutServlet으로 이동  -->
            <input type="submit" value="로그 아웃"> &nbsp;
            <!-- #48] 회원정보 수정 userid를 들고 memberUpdateServlet의 doGet메서드로 이동-->
            <input type="button" 
               value="회원 정보 수정" 
               onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
         
            <input type="button" 
               value="회원 탈퇴" 
               onclick="location.href='delete.do?userid=${loginUser.userid}'">
         
            
            <input type="button" value="게시판"
               onclick="location.href='/Board/index.jsp'">
         </td>
      </tr>
   </table>
</form>

</body>
</html>
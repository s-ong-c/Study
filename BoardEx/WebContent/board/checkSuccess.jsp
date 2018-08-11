<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	#70] 
	비번 통과  수정
 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	if(window.name=='update'){
		//window에서 브라우저(parent)를 특정 페이지로 href(이동) 시킬거야
		//#71] 서블릿  
		window.opener.parent.location.href=
			"BoardServlet?command=board_update_form&num=${param.num}";
		
	}else if(window.name=="delete"){
		alert('게시글이 삭제 되었습니다.');
		window.opener.parent.location.href=
			"BoardServlet?command=board_delete&num=${param.num}";
	}
	window.close();
	
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>layout 2</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
		<jsp:include page="/modue/top.jsp" flush="false"/>
	</td>
	</tr>
	<tr>
		<td width="100" valign="top">
			<jsp:include page="/modue/left.jsp" flush="false">
			<jsp:param value="value1" name=param1"/>
				<jsp:param value="value2" name=param2"/>
			</jsp:include>
			</td>
			<td width="300" valign="top">
		  이부분은 layout2.jsp 가 생성한다. 
			레이아웃2
			<br><br><br>
				<!--내용부분 : 끝 ~~  -->
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<jsp:include page="/modue/bottom.jsp" flush="false"/>
				</td>
			</tr>

</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 에러 페이지<br>
다음과 같은 에러로 잠시 페이지를 중단 합니다<br>
<%=exception.getMessage() %>
</body>
</html>
<%-- 익스플로러는 페이지의 용량이 516kb 이상이 됐을 때만,
에러페이지로 인정한다.  그래서 그용량에 미치지 못하면,,
브라우저가 갖고 있는 기본 에러페이지를 그냥 보여주게 된다.
그렇게 되면 신뢰감을 잃을 수 있기 때문에...가급적이면
사용자가 만든 에러페이지를 보여주는 게 낫다.

보여줄 내용이 516kb 이하면 지금처럼 주석을 작성해서 강제로
페이지의 용량을 늘리면 된다.
  --%>
<!--   익스플로러는 페이지의 용량이 516kb 이상이 됐을 때만,
에러페이지로 인정한다.  그래서 그용량에 미치지 못하면,,
브라우저가 갖고 있는 기본 에러페이지를 그냥 보여주게 된다.
그렇게 되면 신뢰감을 잃을 수 있기 때문에...가급적이면_+
사용자가 만든 에러페이지를 보여주는 게 낫다.

보여줄 내용이 516kb 이하면 지금처럼 주석을 작성해서 강제로
페이지의 용량을 늘리면 된다. -->
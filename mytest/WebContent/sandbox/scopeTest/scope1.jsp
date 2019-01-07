<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope1.jsp</title>
</head>
<body>
<h1>scope1.jsp 페이지</h1>
<jsp:useBean id="vo" class="com.herbmall.test.CounterVO" scope="page"></jsp:useBean>
<jsp:setProperty property="count" name="vo"/>
<p>count 변수 : <jsp:getProperty property="count" name="vo"/></p>
<hr>
<a href="result1.jsp">result1.jsp로 이동</a>

</body>
</html>
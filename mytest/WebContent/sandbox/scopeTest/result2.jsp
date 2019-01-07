<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result2.jsp</title>
</head>
<body>
<h1>result2.jsp 페이지</h1>
<jsp:useBean id="vo" class="com.herbmall.test.CounterVO" scope="request"></jsp:useBean>
<p>count : <jsp:getProperty property="count" name="vo"/> </p>
<hr>
<a href="scope2.jsp">scope2.jsp</a>
</body>
</html>
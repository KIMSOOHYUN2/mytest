<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result4.jsp</title>
</head>
<body>
<h1>result4.jsp 페이지</h1>
<jsp:useBean id="vo" class="com.herbmall.test.CounterVO" scope="application"></jsp:useBean>
<p>count : <jsp:getProperty property="count" name="vo"/> </p>
<hr>
<a href="scope4.jsp">scope4.jsp</a>
<br>
<p>session id : <%=session.getId() %></p>
</body>
</html>
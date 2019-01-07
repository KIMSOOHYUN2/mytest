<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aaa.jsp</title>
</head>
<body>
	<%
		Date d=new Date();
		String s=d.toLocaleString();
		
		String addr = request.getParameter("addr");
	%>
	<hr>
	<h2>현재일 : <%=s %></h2>
	<p>주소 : <%=addr %></p>
</body>
</html>
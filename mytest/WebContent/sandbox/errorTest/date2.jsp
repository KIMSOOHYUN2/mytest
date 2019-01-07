<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date.jsp</title>
</head>
<body>
<%
	Date d = new Date();
	String str = d.toLocaleString();
%>
<h1>error code별 처리</h1>
<p>현재일자 : <%=str %></p>
</body>
</html>











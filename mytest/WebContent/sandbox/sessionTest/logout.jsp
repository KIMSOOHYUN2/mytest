<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
	<%
		session.invalidate(); //세션의 모든 속성 제거
		
		response.sendRedirect("main.jsp"); //jsp에서의 이동
	%>
</body>
</html>
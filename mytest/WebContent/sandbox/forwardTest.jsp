<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardTest.jsp</title>
</head>
<body>
	<!-- forward 액션태그로 이동했으므로 forwardForm_ok.jsp와 forwardTest.jsp
	페이지는 request를 공유한다. -->
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String addr = request.getParameter("address");
	%>
	<h1>forwardTest.jsp 페이지</h1>
	<h2>요청 파라미터</h2>
	<p>id : <%=id %></p>
	<p>pwd : <%=pwd %></p>
	<p>addr : <%=addr %></p>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useSession.jsp</title>
</head>
<body>
	<h1>세션 정보 읽어오기</h1>
	<%
		String userid = (String)session.getAttribute("t_userid");
	%>
	<p>사용자 아이디(userid) : <%=userid %></p>
	<p>세션 아이디 : <%=session.getId() %></p>
	<hr>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardFrom_ok.jsp</title>
</head>
<body>
	<h1>forwardFrom_ok.jsp 페이지</h1>
	<%
	request.setCharacterEncoding("utf-8"); //여기서 한글 인코딩을 해야한다.
	%>
	
	<jsp:forward page="forwardTest.jsp">
		<jsp:param value="서초동" name="address"/>
	</jsp:forward>
	<!-- forward 액션태그를 이용하여 이동시키면 request를 공유함 -->
	
	
</body>
</html>
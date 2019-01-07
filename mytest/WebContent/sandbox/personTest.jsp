<%@page import="com.herbmall.test.Person"%>
<%@page import="com.herbmall.board.model.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>싱글톤 패턴 연습123</h1>
	<%
		//Person p = new Person(); //프라이빗이라서 보이지 않는다. new로 객체 생성불가
		
		Person p = Person.getinstance();//static이라서 Person로 불러오는것
		p.showInfo();
	%>
</body>
</html>
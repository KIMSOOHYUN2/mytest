<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeCookie.jspe</title>
</head>
<body>
	<h1>cookie 저장하기</h1>
	<p>cookie - 상태정보를 저장하기 위해서 사용하는 방법<br>
	클라이언트에 저장함<br>
	임시파일로 저장됨-4kb이하</p>
	
	<%
		//[1]쿠키객체 생성
		Cookie ck1=new Cookie("name","홍길동");
		
		//[2]쿠키 유효기간 설정
		ck1.setMaxAge(2*60); //초단위로 설정, 2분간 유지됨
		
		//[3]쿠키 저장
		response.addCookie(ck1);
		
		//두번째 쿠키
		Cookie ck2=new Cookie("age","20");
		ck2.setMaxAge(30*60); //30분
		ck2.setPath("/"); //경로설정:설정한 경로 및 그 하위 경로에 대해서 쿠키 전달
		response.addCookie(ck2);
	%>
	<h2>쿠키가 생성되었습니다.</h2>
	<a href="useCookie.jsp">쿠키 사용하기</a>
</body>
</html>
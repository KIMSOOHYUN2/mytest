<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useCookie.jsp</title>
</head>
<body>
	<h1>쿠키 읽어오기</h1>
	<%
		Cookie[] ckArr=request.getCookies();
	
		String name="";
		int age=0;
		if(ckArr!=null){ //null인 경우가 많아서 꼭 넣어줘야한다.
			for(int i=0;i<ckArr.length;i++){
				if(ckArr[i].getName().equals("name")){
					name=ckArr[i].getValue();
				}else if(ckArr[i].getName().equals("age")){
					age=Integer.parseInt(ckArr[i].getValue());
				}
			}
		}
	%>
	<p>이름: <%=name %></p>
	<p>나이: <%=age %></p>
</body>
</html>








<%@page import="com.herbmall.test.SimpleVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean_Ok.jsp</title>
</head>
<body>
<%
	//기존 방식
	request.setCharacterEncoding("utf-8");
	/* String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String no = request.getParameter("no");
	
	SimpleVo vo = new SimpleVo();
	vo.setUserid(userid);
	vo.setName(name); 
	vo.setNo(Integer.parseInt(no));*/
%>
<jsp:useBean id="SimpleVo" class="com.herbmall.test.SimpleVo" 
	scope="page"></jsp:useBean>
<%-- <jsp:setProperty property="userid" name="SimpleVo"/>
<jsp:setProperty property="name" name="SimpleVo"/>
<jsp:setProperty property="no" name="SimpleVo"/>--%>

<jsp:setProperty property="*" name="SimpleVo"/>

<h1>usebean 이용 -파라미터</h1>
<%-- <p>userid : <%=vo.getUserid() %></p>
<p>no : <%=vo.getNo() %></p>
<p>name : <%=vo.getName() %></p> 
--%>

<p><jsp:getProperty property="userid" name="SimpleVo"/></p>
<p><jsp:getProperty property="name" name="SimpleVo"/></p>
<p><jsp:getProperty property="no" name="SimpleVo"/></p>

</body>
</html>
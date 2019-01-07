<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sandbox/dbcpTest.jsp</title>
</head>
<body>
<h1>dbcp 이용 - 톰캣이 구현한 ConnectionPool 이용</h1>
<%
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		//[1][2] con
		Context initContext = new InitialContext();
		Context cxt=(Context)initContext.lookup("java:/comp/env");
		DataSource ds=(DataSource)cxt.lookup("jdbc/oracledb");				
		con=ds.getConnection();
		
		//[3] ps
		String sql="select * from reboard";
		ps=con.prepareStatement(sql);
		
		//[4] exec
		rs=ps.executeQuery();
		while(rs.next()){
			int no=rs.getInt("no");
			String title=rs.getString("title");
			out.print(no+" : ");
			out.print(title+"<br>");
		}
		
	}catch(NamingException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(rs!=null) rs.close();
		if(ps!=null) ps.close();
		if(con!=null) con.close();
	}
%>
</body>
</html>




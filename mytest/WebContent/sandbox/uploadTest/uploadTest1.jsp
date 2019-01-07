<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadTest1</title>
</head>
<body>
<h1>파일 업로드 연습</h1>
<form name="frm1" method="post" action="uploadTest1_ok.jsp" 
   enctype="multipart/form-data">
   <p>아이디: <input type="text" name="userid"></p>
   <p>주소: <input type="text" name="address"></p>
   <p>파일 첨부: <input type="file" name="upfile"></p>
   <p><input type="submit" value="전송"></p>
   
</form>
</body>
</html>
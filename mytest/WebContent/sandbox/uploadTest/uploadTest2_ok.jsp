<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadTest2_ok.jsp</title>
</head>
<body>
   <h1>여러개 파일 업로드 결과</h1>
   <%
      String upDir="upload";
      String saveDir = config.getServletContext().getRealPath(upDir);
      System.out.println("물리적 업로드 경로:"+saveDir);
      saveDir=application.getRealPath(upDir);
      
      //테스트 경로
      saveDir="D:\\lecture\\java\\workspace_list\\jsp_ws\\herbmall\\WebContent\\upload";
      
      int maxSize=2*1024*1024; //2M
      String encoding="utf-8";
      FileRenamePolicy policy = new DefaultFileRenamePolicy();
      
      try{
         MultipartRequest mr = new MultipartRequest(request, saveDir, maxSize,
               encoding, policy);
         System.out.println("업로드 완료됨");
         
         Enumeration en = mr.getFileNames();
         while(en.hasMoreElements()){
            String upfile = (String)en.nextElement(); //input type=file의 name
                  
            String fileName = mr.getFilesystemName(upfile);
            out.println("업로드 파일명 : "+fileName+"<br>");
            if(fileName!=null && !fileName.isEmpty()){
               String originalFileName = mr.getOriginalFileName(upfile);
               File file = mr.getFile(upfile);
               long fileSize = file.length();
               
               out.print("변경전 업로드 파일명:"+originalFileName+"<br>");
               out.print("업로드 파일 크기:"+fileSize+"<br><br>");
               
            }
         }//while
         
         out.print("파라미터 userid="+mr.getParameter("userid"));
      }catch(IOException e){
         System.out.println("2M이상의 파일은 업로드 할 수 없습니다.");
         e.printStackTrace();
      }
   %>
</body>
</html>
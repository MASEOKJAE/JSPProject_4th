<%--
  Created by IntelliJ IDEA.
  User: maseokjae
  Date: 2022/11/18
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html>
<head>
    <title>file Upload Result</title>
</head>
<body>

    <%
      String filename = "";
      int sizeLimit = 15*1024*1024;

      String realPath = request.getServletContext().getRealPath("upload");

      File dir = new File(realPath);
      if(!dir.exists()) dir.mkdirs();

      MultipartRequest multipartRequest = null;
      multipartRequest = new MultipartRequest(request, realPath,
              sizeLimit, "utf-8", new DefaultFileRenamePolicy());

      filename = multipartRequest.getFilesystemName("photo");
    %>
    폼에서 전송된 원래 파일명: <%=multipartRequest.getOriginalFileName("photo")%><br/>
    업로드한 파일의 경로: ${pageContext.request.contextPath}/upload/<%=filename%><br/>
    물리적인 저장 경로: <%=realPath%><br/>
    파일명: <%=filename%><br/>
    <img src="${pageContext.request.contextPath}/upload/<%=filename%>">
</body>
</html>

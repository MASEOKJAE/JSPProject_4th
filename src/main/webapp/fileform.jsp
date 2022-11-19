<%--
  Created by IntelliJ IDEA.
  User: maseokjae
  Date: 2022/11/18
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>file Form</title>
<%--    <link rel="stylesheet" href="member.css">;--%>
</head>
<body>
    <form method="post" action="fileupload.jsp" enctype="multipart/form-data">
        <input type="file" name="photo">
        <input type="submit" value="upload">
    </form>
</body>
</html>

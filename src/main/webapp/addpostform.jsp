<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="member.css">;--%>
</head>
<body>

    <h1>Add New Post</h1>
    <form action="addpost.jsp" method="post" enctype="multipart/form-data">
        <table>
            <tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
            <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
            <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
            <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
            <tr><td>Photo:</td><td><input type="file" name="photo"/></td></tr>
            <tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
        </table>
    </form>

</body>
</html>
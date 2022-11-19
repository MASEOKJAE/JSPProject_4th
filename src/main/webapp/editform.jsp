<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Edit Form</title>
<%--	<link rel="stylesheet" href="member.css">;--%>
</head>
<body>

	<%
		BoardDAO boardDAO = new BoardDAO();
		String id = request.getParameter("id");
		BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
		request.setAttribute("vo", u);
	%>

	<h1>Edit Form</h1>
	<form action="editpost.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="${vo.getSeq()}"/>
	<table>
		<tr><td>Category:</td><td><input type="text" name="category" value="${vo.getCategory()}"/></td></tr>
		<tr><td>Title:</td><td><input type="text" name="title" value="${vo.getTitle()}"/></td></tr>
		<tr><td>Writer:</td><td><input type="text" name="writer" value="${vo.getWriter()}" /></td></tr>
		<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${vo.getContent()}</textarea></td></tr>
			<td>
				Photo:</td><td><input type="file" name="photo" value="${vo.getPhoto()}"/><c:if test="${vo.getPhoto() ne ''}"><br/>
				<img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"> </c:if>
			</td>
		<tr><td colspan="2"><input type="submit" value="Edit Post"/>
		<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="800px" align="center">
	<tr>
		<th>댓글</th>
		<td>${dto.postreview}</td>
	</tr>
</table>

<form action="howreresave">
<input type="hidden" value="${dto.postnum}" name="hownum">
<input type="hidden" value="${dto.id}" name="id">
<input type="hidden" value="${dto.postgroups}" name="groups">
<input type="hidden" value="${dto.poststep}" name="step">
<input type="hidden" value="${dto.postindent}" name="indent">
<table border="1" align="center" width="800px">
	<tr>
		<th><textarea rows="10" cols="70" name="review"></textarea></th>
		<td><input type="submit" value="전송"></td>
	</tr>
</table>
</form>
</body>
</html>
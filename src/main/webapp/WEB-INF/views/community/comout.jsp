<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table{
margin-bottom : 150px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${list }" var="com">
<table border="3" width="800px" align="center">
<tr>
	<th>${post.id }</th>
</tr>
<tr>
	<th><a href="comdetail?postnum=${com.postnum}">${com.posttitle }</a></th>
</tr>
<tr>
	<th><img src = "${com.postimg }" width="600px" height="500px"></th>
</tr>
<tr>
	<th>${com.postdetail }</th>
</tr>
<tr>
	<th><button type="button" value="${com.postcnt }">♡</button></th>
</tr>
</table>
</c:forEach>

<form action="comsearch" method="post">
<table border="1" width="500px" align="center">
	<tr>
		<th><select name="comkey">
			<option value="all">전체</option>
			<option value="posttitle">제목</option>
			<option value="postdetail">내용</option>
			<option value="id">작성자</option>
		</select>
		
		</th>
		<td><input class="value" type="text" name="comvalue"></td>
		<td><input class="submit" type="submit" value="submit"></td>
	</tr>
</table>
</form>
	
</body>
</html>
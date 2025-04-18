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
	<caption>"${howvalue}" 검색결과입니다</caption>
	<tr>
		<th>글번호</th><th>ID</th><th>제목</th><th>조회수</th>
	</tr>
	
	<c:forEach items="${list}" var="h">
	<tr>
		<td>${h.postnum}</td>
		<td>${h.id}</td>
		<td><a href="howdetail?hownum=${h.postnum }">${h.posttitle}</a></td>
		<td>${h.postcnt}</td>
	</tr>
	</c:forEach>
</table>

<form action="howsearch" method="post">
<table border="1" width="500px" align="center">
	<tr>
		<th><select name="howkey">
			<option value="all">전체</option>
			<option value="posttitle">제목</option>
			<option value="postdetail">내용</option>
			<option value="id">작성자</option>
		</select>
		
		</th>
		<td><input class="value" type="text" name="howvalue"></td>
		<td><input class="submit" type="submit" value="submit"></td>
	</tr>
</table>
</form>
</body>
</html>
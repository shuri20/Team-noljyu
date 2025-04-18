<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="howsave" method="post" enctype="multipart/form-data">
<input type="hidden" name="knowhow" value="knowhow">
<table border="1" width="400px" align="center">
	<caption>나만의 노하우 글 등록</caption>
	
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id"></td>
	</tr>
	
	<tr>
		<th>제목</th>
		<td><input type="text" name="howtitle"></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="70" name="howdetail"></textarea> </td>
	</tr>
	
	<tr>
		<th>이미지</th>
		<td><input type="file" name="howimg"></td>
	</tr>
	
	<tr>
		<td colspan="2" style="text-align: center;">
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
caption
{
	text-align:center;
}
th,td
{
	text-align:center;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="psearch2" method="post">
<table border="3" width="600px" align="center">
<caption>상품자료 검색</caption>
<tr>
	<th>검색대상</th>
	<td>
		<input type="radio" value="animal" name="scname" size="25">동물구분
		<input type="radio" value="productlist" name="scname" size="25">상품목록
	</td>
</tr>
<tr>
	<th>찾는 값</th>
	<td>
		<input type="text" name="scvalue" size="25">
	</td>
	<tr>
	<td colspan="2" style="text-align:center">
		<input type="submit" value="전송">
		<input type="button" value="취소" onclick="location.href='./main'">
	</td>	
</tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table
{
	margin-top: 50px;
	margin-bottom: 350px;
}
caption
{
	text-align:center;
}
th,td
{
	text-align:center;
	font-size:1.2em;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="cartsave" method="post" enctype="multipart/form-data">
<table border="3" width="500px" align="center">
<caption>장바구니 자료확인</caption>
<tr>
	<th>상품번호</th>
	<td><input type="text" name="productnum" value="${dto.productnum}" readonly></td>	
</tr>
<tr>
	<th>아이디</th>
	<td><input type="text" name="id" value="${dto.id}" readonly></td>	
</tr>
<tr>
	<th>종류</th>
	<td><input type="text" name="animal" value="${dto.animal}" readonly></td>	
</tr>
<tr>
	<th>상품목록</th>
	<td><input type="text" name="productlist" value="${dto.productlist}" readonly></td>	
</tr>
<tr>
	<th>상품명</th>
	<td><input type="text" name="productname" value="${dto.productname}" readonly></td>	
</tr>
<tr>
	<th>가격</th>
	<td><input type="number" name="price" value="${dto.price}" readonly></td>	
</tr>
<tr>
	<th>상품이미지</th>
	<td>
		<img alt="" src="./image/${dto.productimg}" width="70px" height="100px">	
		<input type="hidden" name="himage" value=${dto.productimg} readonly>
	</td>	
</tr>
<tr>
	<td colspan="2">
		<input type="submit" value="확인">
		<input type="button" value="취소" onclick="location.href='productout'">
	</td>	
</tr>
</table>
</form>
</body>
</html>
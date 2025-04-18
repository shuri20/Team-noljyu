<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
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
	<a href="dogproductmain"><img alt="" src="./image/2-modified.png" width="200px" height="160px"></a>
	<a href="catproductmain"><img alt="" src="./image/cat-modified.png" width="200px" height="160px"></a>
	<a href="birdproductmain"><img alt="" src="./image/bird2-modified.png" width="200px" height="160px"></a>
	<a href="fishproductmain"><img alt="" src="./image/goldfish-modified.png" width="200px" height="160px"></a>
	<a href="creepproductmain"><img alt="" src="./image/reptile2-modified.png" width="200px" height="160px"></a>



<table border="3" width="1200px" align="center">
<caption></caption>
	<tr>
		<th>주문번호</th><th>상품번호</th><th>아이디</th>
		<th>상품명</th><th>가격</th><th>상품이미지</th>
		<th>비고</th>		
	</tr>
	<c:forEach items="${list}" var="pro">
	<tr>
		<td>${pro.ordernum} </td>
		<td>${pro.productnum} </td>
		<td>${pro.id} </td>		
		<td>${pro.productname} </td>
		<td>
			<fmt:formatNumber value="${pro.price}" pattern="#,##0"/>
		</td>
		<td>
			<a href="productdetail?num=${pro.productnum}">	
			<img alt="" src="./image/${pro.productimg}" width="80px" height="100px"></a>			
		</td>		
		<td>
			<a href="productbuy?num=${pro.productnum}">즉시구매</a><br>			
			<a href="cartdelete?ordernum=${pro.ordernum}&himage=${pro.productimg}&id=${pro.id}">삭제</a>
		</td>
	</tr>		
	</c:forEach>		
</table>
</body>
</html>
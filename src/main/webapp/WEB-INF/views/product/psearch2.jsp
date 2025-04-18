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
<table border="3" width="800px" align="center">
	<caption>상품자료검색 출력</caption>
	<tr id="bb">	
		<th>상품번호</th><th>아이디</th><th>동물구분</th><th>상품목록</th>
	    <th>가격</th><th>상품이미지</th><th>조회수</th><th>구입날짜</th>     
	</tr>	
	<c:forEach items="${list}" var="pro">
	<tr>
		<td>${pro.productnum} </td>
		<td>${pro.id} </td>
		<td>${pro.animal} </td>
		<td>${pro.productlist} </td>		
		<td>
			<fmt:formatNumber value="${pro.price}" pattern="#,##0"/>  
		</td>
		<td>
			<a href="productdetail?num=${pro.productnum}">	
			<img src="./image/${pro.productimg}" width="70px" height="100px"> 
		</td>	
		<td>${pro.productcnt} </td>	
		<td>${pro.productdate} </td>	
	</tr>
	</c:forEach>
</table>
<div id="aa">
<a href="productsearch">뒤로가기</a>
</div>
</body>
</html>
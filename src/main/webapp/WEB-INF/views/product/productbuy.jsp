<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<style>
.payment
{
	text-align:left;
}
.order_tit1
{
	color:black
}
.order_tit2
{
	color:black
}
.table1
{
	margin-top: 50px;
	margin-bottom: 50px;
}
.table2
{
	border-collapse: collapse;
	margin-top: 0px;
	margin-left: 350px; 
	margin-bottom: 50px;
}
.table3
{
	margin-top: 0px;
	margin-bottom: 50px;
}
.table4
{
	margin-top: 0px;
	margin-bottom: 250px;
}
caption
{
	text-align:center;
}
th,td
{
	text-align:center;
	font-size:1.3em;
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

<table class="table1" border="3" width="1200px" align="center">
<caption>
	<div class="order_tit1" align="left">
	<h3>주문서작성/결제</h3>
	</div>
	<br>
	<div class="order_tit2" align="left">
		<h4>주문상세내역</h4>
	</div>
</caption>
	<tr>
		<th>상품이미지</th><th>상품명</th><th>가격</th>
		<th>상품번호</th><th>아이디</th><th>동물구분</th>
		<th>상품목록</th>
		<th>조회수</th><th>구입날짜</th><th>비고</th>		
	</tr>
	<c:forEach items="${list}" var="pro">
	<tr>
		<td>
			<a href="productdetail?num=${pro.productnum}">	
			<img alt="" src="./image/${pro.productimg}" width="150px" height="120px"></a>			
		</td>
		<td>${pro.productname} </td>
		<td>
		<fmt:formatNumber value="${pro.price}" pattern="#,##0"/>
		</td>
		<td>${pro.productnum} </td>
		<td>${pro.id} </td>
		<td>${pro.animal} </td>
		<td>${pro.productlist} </td>		
		<td>${pro.productcnt} </td>	
		<td>${pro.productdate} </td>
		<td>
			<a href="pmodify1?num=${pro.productnum}">주문정보수정</a>			
		</td>	
	</tr>		
	</c:forEach>		
</table>


<table class="table2" border="3" width="1200px" align="left">
<caption>
	<div class="order_tit2" align="left">
		<h4>주문고객정보</h4>
	</div>
</caption>
	<tr>
		<th>이름</th>
		<td><input type="text" name="username"> </td>
	</tr>
	<tr>
		<th>휴대폰 번호</th>
		<td><input type="number" name="userphone"> </td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="text" name="useremail"> </td>
	</tr>
	<tr>	
		<th>배송방법</th>
		<td>
			<input type="radio" value="">일반택배 
			<input type="radio" value="">매장픽업 
		</td>
	</tr>
	<tr>
		<th>배송정보</th>
		<td>
			<input type="radio" value="">기본배송지
			<input type="radio" value="">최근배송지
			<input type="radio" value="">신규입력 
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="useraddress"> </td>
	</tr>	
	<tr>
		<th>배송시 요청사항</th>
		<td><input type="text" name="usermemo"> </td>
	</tr>				
</table>

<table class="table3" border="3" width="1200px" align="center">
<caption>
	<div class="order_tit2" align="left">
		<h4>결제수단</h4>
	</div>
</caption>
<div class="payment_method">
	<c:forEach items="${list}" var="pro">
	<tr>		
		<colgroup>
		<col width="50%"><col width="50%">
		<td><a href="naverpay">네이버페이</a></td><td><a href="toss">토스</a></td>		
	</tr>		
	</c:forEach>	
</div>	
</table>

<table class="table4" border="3" width="1200px" align="center">
<caption>
	<div class="order_tit2" align="left">
		<h4>결제정보</h4>
	</div>
</caption>
<div class="payment">
	<c:forEach items="${list}" var="pro">
	<tr>
		<th>총 정상가</th>
		<td>
			<fmt:formatNumber value="${pro.price}" pattern="#,##0"/>
		</td>
	</tr>
	<tr>
		<th>총 배송비</th>
		<td>
			<fmt:formatNumber value="" pattern="#,##0"/>
		</td>
	</tr>
	<tr>
		<th>총 할인금액</th>
		<td>
			<fmt:formatNumber value="" pattern="#,##0"/>
		</td>
	</tr>
	<tr colspan="2">
		<th>총 결제예정금액</th>
		<td>
			<fmt:formatNumber value="${pro.price}" pattern="#,##0"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<a href="">결제하기</a>
		<a href="productout">취소</a>
	</tr>
	</c:forEach>
</div>
</table>




</body>
</html>
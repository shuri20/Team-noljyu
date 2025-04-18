<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<style>
#aa
{
	padding-top: 10px;
	font-size: 1.5em;
}
#bb
{
	padding-top: 10px;
	font-size: 1.5em;
	background-color: white;
}
table
{
	margin-top: 50px;
	margin-bottom: 350px;
}
th,td
{
	text-align:center;
}


.container{
display:flex;
flex-direction:column; 
justify-content:space-between;
width:300px;
gap:24px;
border:1px solid #ebeaec;
box-shadow:0px 2px 4px rgba(0,0,0,0.3);
border-radius:16px;
padding:24px;
}    
.top{
font-weight:bold;
font-size:16px
}
.bottom .name{
font-size:13px;
color:#727174;
}
.bottom .date{
font-size:12px;
color:#b4b4b6;
}
body
{
	padding-top: 100px;
	margin-bottom: 350px;
}
.wrap{
display:flex;
justify-content:row;
gap:16px;
}
.flex-container {
  display: flex;
  gap: 10px; /* 이미지 간 간격 */
}
.product-list {
  display: grid;
  grid-template-columns: repeat(4, 1fr); /* 1줄에 4개 */
  gap: 20px;
  padding: 20px;
}

.product {
  border: 1px solid #ddd;
  border-radius: 10px;
  padding: 10px;
  box-shadow: 0px 2px 5px rgba(0,0,0,0.1);
  text-align: center;
}

.product img {
  width: 100%;
  height: auto;
}

.product .name {
  font-size: 16px;
  font-weight: bold;
  margin-top: 10px;
}

.product .price {
  font-size: 14px;
  color: #888;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<link href="alignpractice.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<div id="aa">
		<a href="dogproductmain"><img alt="" src="./image/2-modified.png" width="200px" height="160px"></a>
		<a href="catproductmain"><img alt="" src="./image/cat-modified.png" width="200px" height="160px"></a>
		<a href="birdproductmain"><img alt="" src="./image/bird2-modified.png" width="200px" height="160px"></a>
		<a href="fishproductmain"><img alt="" src="./image/goldfish-modified.png" width="200px" height="160px"></a>
		<a href="creepproductmain"><img alt="" src="./image/reptile2-modified.png" width="200px" height="160px"></a>
	</div>
	<br>
	<div id="bb">
		<a href="dogfoodsnack">사료&간식</a>
		<a href="dogtoyliving">장난감&리빙</a>
		<a href="doghealthtoilet">건강&배변</a>
		<a href="dogbeautyfashion">미용&패션</a>
	</div>
	<br>
	<div class="product-list">
	  <c:forEach items="${list}" var="pro">
	    <div class="product">
	      <a href="productdetail?num=${pro.productnum}">
	        <img alt="${pro.productname}" src="./image/${pro.productimg}" width="300px" height="300px">
	      </a>
	      <div class="animal">${pro.animal}</div>
	      <div class="productlist">${pro.productlist}</div>
	      <div class="name">${pro.productname}</div>
	      <div class="price">₩${pro.price}</div>
	    </div>
	  </c:forEach>
	</div>

	<div class="flex-container">
	  <c:forEach items="${list}" var="pro">
	    <div class="wrap"> 
	      <div class="container">
	        <div class="top">	
	          <a href="productdetail?num=${pro.productnum}">	
	            <img alt="${pro.productname}" src="./image/${pro.productimg}" width="180px" height="180px">
	          </a>
	        </div>
	        <div class="bottom">
	          <div class="name">${pro.productname}</div>
	          <div class="price">₩${pro.price}</div>
	        </div>
	      </div>
	    </div>
	  </c:forEach>
	</div>
</body>
</html>
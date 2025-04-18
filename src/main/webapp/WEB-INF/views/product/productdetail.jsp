<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
<style>
body {
  margin: 0;
  font-family: 'Noto Sans KR', sans-serif;
  background-color: #fff;
  color: #333;
}

.container {
  max-width: 1200px;
  margin: 50px auto;
  margin-bottom: 350px;
  display: flex;
  gap: 50px;
}

.image-box img {
  width: 500px;
  height: auto;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.details {
  flex: 1;
}

.details h1 {
  font-size: 24px;
  margin-bottom: 10px;
}

.price {
  font-size: 22px;
  font-weight: bold;
  color: #e60023;
}

.old-price {
  text-decoration: line-through;
  color: gray;
  margin-left: 10px;
  font-size: 16px;
}

.discount {
  background-color: #ffcc00;
  color: #333;
  font-size: 14px;
  padding: 2px 6px;
  margin-left: 10px;
  border-radius: 4px;
}

.popular {
  background-color: #ffcc00;
  color: #333;
  font-size: 14px;
  padding: 2px 6px;
  margin-left: 10px;
  border-radius: 4px;
}

.select, .quantity {
  margin-top: 20px;
  font-size: 16px;
}

.select select {
  padding: 8px;
}

.quantity input {
  width: 40px;
  text-align: center;
}

.buttons {
  margin-top: 30px;
}

.buttons a {
  display: inline-block;
  padding: 12px 24px;
  margin-right: 10px;
  background-color: #000;
  color: #fff;
  text-decoration: none;
  border-radius: 8px;
  transition: 0.3s;
}

.buttons a:hover {
  background-color: #444;
}
</style>
</head>
<body>

<div class="container">
  <!-- 이미지 영역 -->
  <div class="image-box">
    <img src="./image/${dto.productimg}" alt="상품 이미지">
  </div>

  <!-- 상품 정보 영역 -->
  <div class="details">
    <h3>${dto.animal}</h3>
    <h2>${dto.productlist}</h2>
    <h1>${dto.productname}</h1>
    <div>
      <span class="price">${dto.price}원</span>
      <span class="popular">인기</span>
     <!--   <span class="old-price">5,000원</span>
      <span class="discount">50%</span> -->
    </div>
<!--  
    <div class="select">
      <label>종류: </label>
      <select>
        <option>오땅근</option>
        <option>댕댕이</option>
        <option>호랭이</option>
      </select>
    </div>

    <div class="quantity">
      <label>수량: </label>
      <input type="number" value="1" min="1">
    </div>
-->
<!-- <div class="buttons">
       <a href="productcart?num=${dto.productnum}">ADD TO CART</a> 
      <a href="productbuy?num=${dto.productnum}">BUY IT NOW</a> 
      <a href="productbuy?num=${dto.productnum}">쿠팡 구매하기</a>
    </div> -->
 
  
  <div class="buttons">
 	 <a href=${dto.productlink} target="_blank">쿠팡에서 구매하기</a>
  </div>
</div>

</body>
</html>
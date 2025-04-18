<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
header{
text-align: center;
background-image: url("./image/spring.jpg");
background-repeat: no-repeat;
background-position:center;
background-size:contain;
padding: 200px;
margin: 0;
width: 1800px;
height: 400px;
font-size: 3em;
font-style: italic;
}



</style>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
<font>Program</font>
</header>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="main">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">회원 관리 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="userinput">회원 입력</a></li>
          <li><a href="userout">회원 조회</a></li>
          <li><a href="usersearch">회원 검색</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">상품 관리 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="productinput">상품 입력</a></li>
          <li><a href="productout">상품 조회</a></li>
          <li><a href="productsearch">상품 검색</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시글 관리 <span class="caret"></span></a>
        <ul class="dropdown-menu" >
          <li><a href="postinput"><span>게시물 등록</span></a></li>
          <li><a href="postout">게시물 조회</a></li>
        </ul>
      </li>
      
    </ul>
        <ul class="nav navbar-nav navbar-right">
        <c:choose>
        <c:when test="${loginstate==true }">
        <li><a href="mypage"><span class="glyphicon glyphicon-user"></span>${id }마이페이지</a></li>
        <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
        <li><a href="productcart?id=${id}"><span class="glyphicon glyphicon-shopping-cart"></span> 장바구니</a></li>
        </c:when>
        <c:otherwise>
      <li><a href="userinput"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      </c:otherwise>
      </c:choose>
    </ul>
        <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
      </div>
      <button type="submit" class="btn btn-default">검색</button>
    </form>
  </div>
  
</nav>
</body>
</html>
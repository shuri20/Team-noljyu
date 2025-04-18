<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
td,th{
text-align: center; 
}
img:hover{
transform:scale(2,2); 
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="scearch2">
<table border="3" width="450px" align="center">
<caption>검색창</caption>
    <tr>
      <th>검색 유형</th>
      <td>
        <label><input type="radio" name="cate" value="id">아이디</label>
        <label><input type="radio" name="cate" value="name">이름</label>
        <label><input type="radio" name="cate" value="address">주소</label>
        <label><input type="radio" name="cate" value="phone">연락처</label>
        <label><input type="radio" name="cate" value="nickname">닉네임</label>
        <label><input type="radio" name="cate" value="myanimal">반려동물</label>
      </td>
    </tr>
    <tr>
      <th>검색어</th>
      <td><input type="text" name="scearch" placeholder="검색어를 입력하세요"></td>
    </tr>
    <tr>
      <td colspan="2" style="text-align: center;">
        <input type="submit" value="검색">
      </td>
    </tr>
  </table>
</form>
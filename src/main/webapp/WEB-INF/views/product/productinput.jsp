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
<form action="productsave" method="post" enctype="multipart/form-data">
<Table border="3" width="600px" align="center">
<caption>상품자료 입력</caption>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id"> </td>		
	</tr>
   <tr>
      <th>동물구분</th>
      <td>
         <select name="animal">
            <option value="dog">개</option>
            <option value="cat">고양이</option>
            <option value="bird">새</option>
            <option value="fish">물고기</option>
            <option value="creep">파충류</option> 
         </select>
      </td>
   </tr>
	<tr>
		<th>상품목록</th>
		<td>
           <select name="productlist">
         	  <option value="foodsnack">사료&간식</option>
              <option value="toyliving">장난감&리빙</option>
              <option value="healthtoilet">건강&배변</option>
              <option value="beautyfashion">미용&패션</option>             
           </select>
      </td>		
	</tr>
	<tr>
		<th>상품명</th>
		<td><input type="text" name="productname"> </td>		
	</tr>
	<tr>	
		<th>가격</th>
		<td><input type="number" name="price"> </td>
	</tr>
	<tr>
		<th>상품이미지</th>
		<td><input type="file" name="productimg"> </td>
	</tr>
	<tr>
		<th>구입날짜</th>
		<td><input type="date" name="productdate"> </td>		
	</tr>
	<tr>
		<th>상품링크</th>
		<td><input type="text" name="productlink"> </td>		
	</tr>	
	<tr>		
		<td colspan="2">					
				<input style="background-color: lightgray" type="submit" value="구매내역 전송"> &emsp;		
				<input style="background-color: lightgray" type="reset" value="취소" onclick="location.href='./'">				
		</td>	
	</tr>
</Table>
</form>
</body>
</html>
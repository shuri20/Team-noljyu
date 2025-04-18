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
	<form action="modifysave" method="post">
		<table border="3" width="400px" align="center">
			<caption>회원정보 수정</caption>
			
			<tr>
			<th>아이디</th>
			<td><input type="hidden" name="id" value="${dto.id}">
            </td>
            </tr>
            
			<tr>
				<th>패스워드</th>
				<td><input type="text" name="pw" value="${dto.pw}" required="required"></td>
			</tr>

			<tr>
				<th>이름</th>
				<td><input type="text" name="name" value="${dto.name}" required="required"></td>
			</tr>

			<tr>
				<th>주소</th>
				<td><input type="text" name="address" value="${dto.address}" required="required"></td>
			</tr>

			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone" value="${dto.phone}" required="required"></td>
			</tr>

			<tr>
				<th>닉네임</th>
				<td><input type="text" name="nickname" value="${dto.nickname}" required="required"></td>
			</tr>

			<tr>
				<th>나의 반려동물</th>
				<td><input type="text" name="myanimal" value="${dto.myanimal}" required="required"></td>
			</tr>

			<tr style="text-align: center;">
				<td colspan="2">
				<input type="submit" value="전송"> 
				<input type="button" value="취소" onclick="location.href='main'"></td>
			</tr>


		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
td, th {
	text-align: center;
}

img:hover {
	transform: scale(2, 2);
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="3" width="1300px" align="center">
		<caption>마이페이지</caption>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
			<th>닉네임</th>
			<th>나의 반려동물</th>
			<th>비고</th>
		</tr>
		<tr>
			<td>${myinfo.id}</td>
			<td>${myinfo.pw}</td>
			<td>${myinfo.name}</td>
			<td>${myinfo.address}</td>
			<td>${myinfo.phone}</td>
			<td>${myinfo.nickname}</td>
			<td>${myinfo.myanimal}</td>

			<td>
			<a href="modify1?id=${myinfo.id}">회원정보 수정&emsp;</a> 
			<a href="delete1?id=${myinfo.id}">회원탈퇴</a></td>

		</tr>
	</table>
</body>
</html>
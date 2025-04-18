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
<form action="logincheck"method="post">
<table border="3" width="330px" align="center">
<caption>로그인화면</caption>
<tr>
<th>아이디</th>
<td><input type="text" name="id">
</td>
</tr>

<tr>
<th>패스워드</th>
<td><input type="text" name="pw"></td>
</tr>


<tr style="text-align: center;">
<td colspan="2">
<input type="submit" value="로그인">&emsp;
<input type="reset" value="취소">
</td>

</tr>


</table>
</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delete2" method="post">
    <table border="3" width="400px" align="center">
        <caption>정말 탈퇴하시겠습니까?</caption>
        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="submit" value="회원탈퇴" onclick="return confirm('정말로 탈퇴하시겠습니까?');">
                <input type="button" value="취소" onclick="location.href='main'">
            </td>
        </tr>
    </table>
</form>

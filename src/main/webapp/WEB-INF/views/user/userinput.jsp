<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#idcheck").click(function() {
			var id = $("#id").val();
			$.ajax({
				type : "post",
				url : "idcheck2",
				data : {"id" : id},
				async : true,
				success : function(res) {
					if (res == "ok") 
					{
						alert("사용가능 ID입니다.");
					} 
					else 
					{
						alert("사용중인 ID입니다. 다른ID를 사용하세요");
					}
				}
			});
		});
	});
</script>

<script>
$(document).ready(function(){
    $("select[name='admin']").change(function(){
        if($(this).val() === "admin") {
            $("#adminPwRow").show();
        } else {
            $("#adminPwRow").hide();
            $("#adminPass").val(""); // 비우기
        }
    });
});
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="usersave" method="post">
		<table border="3" width="400px" align="center">
			<caption>회원관리 입력화면</caption>

			<tr>
				<th>회원 유형</th>
				<td><select name="admin">
						<option value="user">일반 사용자</option>
						<option value="admin">관리자</option>
				</select></td>
			</tr>

			<tr id="adminPwRow" style="display: none;">
				<th>관리자용 비밀번호</th>
				<td><input type="password" name="adminPass" id="adminPass"></td>
			</tr>

			<tr>
				<th>아이디</th>
				<td>
				<input type="text" name="id" id="id"> 
				<input type="button" id="idcheck" value="id중복검사">
				</td>
			</tr>

			<tr>
				<th>패스워드</th>
				<td><input type="text" name="pw"></td>
			</tr>

			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<th>주소</th>
				<td><input type="text" name="address"></td>
			</tr>

			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone"></td>
			</tr>

			<tr>
				<th>닉네임</th>
				<td><input type="text" name="nickname"></td>
			</tr>

			<tr>
				<th>나의 반려동물</th>
				<td><input type="text" name="myanimal"></td>
			</tr>

			<tr style="text-align: center;">
				<td colspan="2">
				<input type="submit" value="입력">&emsp;
				<input type="reset" value="취소"></td>
			</tr>


		</table>
	</form>
</body>
</html>
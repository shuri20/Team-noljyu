<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
//게시글 삭제
$(document).ready(function() {
    $("#howdelete").click(function() {
        var hownum = $("#hownum").val();
        var value = confirm("정말로 삭제하시겠습니까?");
        if (value == true) {
            $.ajax({
                type: "POST",
                url: "howdelete",
                data: { "hownum": hownum },
                async: true,
                success: function(bigo) {
                    if (bigo == "success") { 
                        alert("삭제가 완료되었습니다");
                        let url = 'howdetail?postnum=${dto.postnum}';
                        location.replace(url);
                    } else {
                        alert("정상적으로 처리되지 않았습니다");
                        location.href="main";
                    }
                },
                error: function() {
                    alert("에러가 발생했습니다. 다시 시도해주세요");
                }
            });
        }
    });
});

// 댓글 수정(DB 저장)
function reviewRealUpdate(sindex){
    var reviewnum = $('#reviewnum'+sindex).val();
    var review = $("#reveiwUpdate-content"+sindex).val();

    $.ajax({
        url : "howreviewupdate",
        data : {'reviewnum' : reviewnum, 'review' : review},
        dataType :'text', 
        success : function(data){
            if(data == "1") {
                alert("댓글이 수정되었습니다");
                let url = 'howdetail?postnum=${dto.postnum}';
                location.replace(url);
            }
        }
    });
}

// 댓글 수정(댓글 입력 창으로 화면 바뀌기)
function howreupdate(sindex){
    $('#howreview2'+sindex).hide();
    $('#howreview3'+sindex).show();
    $('#howreupdate-btn'+sindex).hide();
}

//댓글 삭제
function howreviewdelete(sindex) {
    var reviewnum = $('#reviewnum'+sindex).val();
    var value = confirm("정말로 삭제하시겠습니까?");
    if (value == true) {
	    $.ajax({
	        type: "POST",
	        url: "howreviewdelete",
	        data: { "reviewnum": reviewnum },
	        async: true,
	        success: function(bigo) {
	            if (bigo == "success") { 
	                alert("삭제가 완료되었습니다");
	                let url = 'howdetail?postnum=${dto.postnum}';
	                location.replace(url);
	            } else {
	                alert("정상적으로 처리되지 않았습니다");
	                location.href="main";
	            }
	        },
	        error: function() {
	            alert("에러가 발생했습니다. 다시 시도해주세요");
	        }
	    });
    }
}

//대댓글 입력(대댓글 입력창 생성)
function howrere(sindex){
    $('#howrere2'+sindex).show();
    $('#howrere-btn'+sindex).hide();
}

//대댓글 저장(DB)
function rereRealUpdate(sindex){
    var reviewnum = $('#reviewnum'+sindex).val();
    var review = $("#howrere-content"+sindex).val();
    $.ajax({
        url : "howreresave",
        data : {'reviewnum' : reviewnum, 'review' : review},
        dataType :'text', 
        success : function(data){
            if(data == "1") {
                alert("댓글이 입력되었습니다");
                let url = 'howdetail?postnum=${dto.postnum}';
                location.replace(url);
            }
        }
    });
}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 게시글 상세페이지 출력 -->
<input type="hidden" name="hownum" value="${dto.postnum}" id="hownum">
<table border="1" width="800px" align="center">
	<tr>
		<th>아이디</th>
		<td>${dto.id}</td>
	</tr>
	
	<tr>
		<th>제목</th>
		<td>${dto.posttitle}</td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td>${dto.postdetail}</td>
	</tr>
	
	<tr>
		<th>이미지</th>
		<td><img alt="" src="./image/${dto.postimg}"></td>
	</tr>
	
	<tr>
		<td colspan="2" style="text-align: center;">
		<button onclick="location.href='howupdate?hownum=${dto.postnum}'">수정</button>
		<button id="howdelete">삭제</button>
	</tr>
</table>

<!-- 댓글 입력창 -->
<form action="howreviewsave">
<input type="hidden" value="${dto.postnum}" name="hownum">
<input type="hidden" value="${dto.id}" name="id">
<input type="hidden" value="${dto.posttype }" name="posttype">
<table border="1" align="center" width="800px">
	<tr>
		<th><textarea rows="10" cols="70" name="review"></textarea></th>
		<td><input type="submit" value="전송"></td>
	</tr>
</table>
</form>

<!-- 댓글 출력 -->
<table border="1" align="center" width="800px" style="margin-bottom: 100px">
<c:forEach items="${list}" var="rr" varStatus="status">

	<!-- 작성자, 수정/삭제/댓글 표시 -->
	<tr style="border-bottom: none;">
		<th style="border-right: none;">
		<c:forEach var="i" begin="0" end="${rr.postindent}">
			<c:choose>
				<c:when test="${i<rr.postindent}">
					&emsp;
				</c:when>
				<c:when test="${i==rr.postindent}">
					<img alt="" src="./image/reviewicon.png" height="30px">
				</c:when>
			</c:choose>
		</c:forEach>${rr.id} 
		<input type="hidden" value="${rr.postreviewnum}" id="reviewnum${status.index}"></th>
		<td style="border-left: none; text-align: right;">
		<a href="#" id="howreupdate-btn${status.index}" onclick="howreupdate(${status.index}); return false;">수정</a>
		<a href="#" id="howreviewdelete${status.index}" onclick="howreviewdelete(${status.index})">삭제</a>
		<a href="#" id="howrere-btn${status.index}" onclick="howrere(${status.index}); return false;">댓글</a>
		<!-- <a href="howrere?reviewnum=${rr.postreviewnum}">댓글</a> -->
		</td>
	</tr>
	
	<!-- 댓글 보기창 -->
	<tr id="howreview2${status.index}">
		<td colspan="2" style="text-align: left;">
		<c:forEach var="i" begin="0" end="${rr.postindent}">
			<c:choose>
				<c:when test="${i<rr.postindent}">
					&emsp;
				</c:when>
				<c:when test="${i==rr.postindent}">
					<img alt="" src="./image/reviewicon.png" height="30px">
				</c:when>
			</c:choose>
		</c:forEach>
		${rr.postreview}
		</td>
	</tr>
	
	<!-- 댓글 수정창 -->
	<tr id="howreview3${status.index}" style="display: none;">		
    	<td colspan="2" style="text-align: left;">
    	<c:forEach var="i" begin="0" end="${rr.postindent}">
			<c:choose>
				<c:when test="${i<rr.postindent}">
					&emsp;
				</c:when>
				<c:when test="${i==rr.postindent}">
					<img alt="" src="./image/reviewicon.png" height="30px">
				</c:when>
			</c:choose>
		</c:forEach>
    	<textarea mexlength="300" id="reveiwUpdate-content${status.index}" class="form-control" rows="2" cols="100" placeholder="댓글을 입력해 주세요">${rr.postreview}</textarea>
        <a href="" onclick="reviewRealUpdate(${status.index}); return false;" >등록</a>
   		</td>
	</tr>
	
	<!-- 대댓글 입력 -->
	<tr id="howrere2${status.index}" style="display: none;">		
    	<td style="text-align: left;">
    	<c:forEach var="i" begin="0" end="${rr.postindent}">
			<c:choose>
				<c:when test="${i<rr.postindent}">
					&emsp;
				</c:when>
				<c:when test="${i==rr.postindent}">
					<img alt="" src="./image/reviewicon.png" height="30px">
				</c:when>
			</c:choose>
		</c:forEach>
    	<textarea mexlength="300" id="howrere-content${status.index}" class="form-control" rows="2" cols="100" placeholder="댓글을 입력해 주세요"></textarea>
        </td>
        <td>
        	<a href="" onclick="rereRealUpdate(${status.index}); return false;">등록</a>
   		</td>
	</tr>
	
</c:forEach>

	<!-- 댓글 페이징 처리 -->
	<tr style="border-left: none;border-right: none;border-bottom: none">
		<td colspan="8" style="text-align: center;">
		<c:if test="${paging.startPage!=1 }">
		   <a href="howdetail?hownum=${dto.postnum}&nowPage=${paging.startPage-1}&cntPerPage=${paging.cntPerPage}"></a>
		</c:if>   
		
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p"> 
		   <c:choose>
		      <c:when test="${p == paging.nowPage }">
		         <b><span style="color: red;">${p}</span></b>
		      </c:when>   
		      <c:when test="${p != paging.nowPage}">
		         <a href="howdetail?hownum=${dto.postnum}&nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
		      </c:when>   
		   </c:choose>
		</c:forEach>      
		
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="howdetail?hownum=${dto.postnum}&nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage }">  </a>
		</c:if>   
	   </td>
	</tr>
</table>
</body>
</html>
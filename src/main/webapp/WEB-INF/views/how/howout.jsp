<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="800px" align="center">
	<tr>
		<th>글번호</th><th>ID</th><th>제목</th><th>조회수</th>
	</tr>
	
	<c:forEach items="${list}" var="h">
	<tr>
		<td>${h.postnum}</td>
		<td>${h.id}</td>
		<td><a href="howdetail?postnum=${h.postnum }">${h.posttitle}</a></td>
		<td>${h.postcnt}</td>
	</tr>
	</c:forEach>
	
	<tr style="border-left: none;border-right: none;border-bottom: none">
		<td colspan="8" style="text-align: center;">
		<c:if test="${paging.startPage!=1 }">
		   <a href="howout?nowPage=${paging.startPage-1 }&cntPerPage=${paging.cntPerPage}"></a>
		</c:if>   
		
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p"> 
		   <c:choose>
		      <c:when test="${p == paging.nowPage }">
		         <b><span style="color: red;">${p}</span></b>
		      </c:when>   
		      <c:when test="${p != paging.nowPage}">
		         <a href="howout?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
		      </c:when>   
		   </c:choose>
		</c:forEach>      
		
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="howout?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage }">  </a>
		</c:if>   
	   </td>
	</tr>
	
</table>

<form action="howsearch" method="post">
<table border="1" width="500px" align="center">
	<tr>
		<th><select name="howkey">
			<option value="all">전체</option>
			<option value="posttitle">제목</option>
			<option value="postdetail">내용</option>
			<option value="id">작성자</option>
		</select>
		
		</th>
		<td><input class="value" type="text" name="howvalue"></td>
		<td><input class="submit" type="submit" value="submit"></td>
	</tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix= "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
#cl-dashboard {
	display: none;
}
table{
border : 1px solid gray;
}

th,tr,td{
border : 1px solid gray;
}

a:LINK {
	color: black;
	text-decoration: none;
	font-size: 10pt;
}

a:HOVER {
	color: blue;
	text-decoration: underline;	
	font-size:10pt;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div>
<input type="button" value="데이타추가" style="width: 100px;" onclick="location.href='writeform.do'">
</div><br>
<c:if test="${totalCount>0 }">
<b>총 ${totalCount }개의 게시글이 있습니다.</b>
</c:if>
<table>
<tr bgcolor="#ddd" height="30">
<th width="60">번호</th>
<th width="300">제목</th>
<th width="80">작성자</th>
<th width="60">조회</th>
<th width="120">작성일</th>
</tr>
<c:if test="${totalCount==0 }">
<tr height="30">
<td colspan="5" align="center">
등록된 게시물이 없습니다.
</td>
</tr>
</c:if>
<c:if test="${totalCount>0 }">
<c:forEach var = "dto" items ="${list}" varStatus="i">

<tr>
<td>${i.count }</td>

<td><a style="black" href="content.do?num=${dto.num}&pageNum=${currentPage}&key=list">${dto.subject }</a>
<!-- 내용중 사진이 있을경우 카메라 아이콘 표시하기 -->
<c:set var = "n" value="${fn:indexOf(dto.content,'<img') }"></c:set>
<c:if test = "${n>=0 }">
<img src="../image/camera.PNG" width="15" />
</c:if>
</td>
<td>${dto.name }</td>
<td>${dto.readcount }</td>
<td><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd"/></td>
</tr>
</c:forEach>
</c:if>
</table>

<!-- 페이징처리 -->
<div style="width:800px;text-align: center; font-size: 10pt;">
<c:if test="${totalCount > 0 }">
<!-- 이전 -->
<c:if test="${startPage > 1}">
<a href="list.do?pageNum=${startPage - 1 }" style="color:black;">◀</a>
</c:if>
<c:forEach var="pg" begin="${startPage }" end="${endPage }">
<c:if test="${pg==currentPage }">
[<a href="list.do?pageNum=${pg }" style="color: red; font-weight:bold;">${pg }</a>]
</c:if>
<c:if test="${pg!=currentPage }">
[<a href="list.do?pageNum=${pg }" style="color:black;">${pg }</a>]
</c:if>
</c:forEach>
<!-- 다음 -->
<c:if test="${endPage<totalPage}">
<a href="list.do?pageNum=${endPage+1 }" style="color:black;">▶</a>
</c:if>
</c:if>
</div>
</body>
</html>
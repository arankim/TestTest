<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
</head>
<body>
<table style="width: 700px">
<c:forEach var = "dd" items="${list }">
	<tr>
		<td>
			<b>${dd.subject}</b>
		</td>
		<td><span style="color: gray;font-size: 10pt;">
			<fmt:formatDate value="${dd.writeday }" pattern="yyyy-MM-dd"/></span>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<b>${dd.name}</b>
			<br><br>			
			<pre>${dd.content}</pre>	
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<span style="color: gray;font-size: 9pt;">
			조회수&nbsp; ${dd.readcount}
			</span>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button"
			  value="글쓰기" style="width: 60px;"
			  onclick="location.href='writeform.do''">
			<input type="button" 
			  value="글목록" style="width: 60px;"
			  onclick="location.href='list.do?pageNum=${pageNum}'">	
			  	<input type="button" 
			  value="수정" style="width: 60px;"
			  onclick="location.href='updateform.do?pageNum=${pageNum}&num=${dd.num }'">	
			  <form action="delete.do" method="post">
			  <input type="hidden" name= "pageNum" value="${pageNum }">
			  <input type="hidden" name="num" value="${dd.num }">
			  	<input type="button" 
			  value="삭제" style="width: 60px;" onclick="location.href='delete.do'">			
			  </form>		
		</td>
	</tr>	
	</c:forEach>
</table>
</body>
</html>
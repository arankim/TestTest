<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
#cl-dashboard {
	display: none;
}
</style>
</head>
<body>
<form action = "sangpumaction.jsp" method="post">
<table style="margin: 0 auto;">
<caption>[데이타 추가]</caption>
<tr height="30">
<th width="100" bgcolor="#fdf">상품명</th>
<td width="200">
<input type="text" name="sang" size="30" autofocus="autofocus" required="required">
</td>
</tr>
<tr height="30">
<th width="100" bgcolor="#fdf">수 량</th>
<td width="200">
<input type="text" name="su" size="100" required="required">
</td>
</tr>
<tr height="30">
<th width="100" bgcolor="#fdf">단 가</th>
<td width="200">
<input type="text" name="dan" size="100" required="required">
</td>
</tr>
<tr height="30">
<td colspan="2" bgcolor="#fdf" align="center">
<input type="submit" value="db저장" style="width:100px; background: orange;">
<input type="button" value="db목록" style="width:100px; background: orange;" onclick="location.href='sangpumlist.jsp'">
</td>
</tr>
</table>
</form>
</body>
</html>
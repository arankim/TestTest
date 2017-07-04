<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="day0628.db.TestDao"%>
<%@page import="day0628.db.TestDto"%>
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
<%
String num =request.getParameter("num");
TestDao dao = new TestDao();
TestDto dto = dao.getData(num);
%>

<form action = "updateaction.jsp" method="post">
<table style="margin: 0 auto;">
<caption>[데이타 수정]</caption>
<tr height="30">
<th width="100" bgcolor="#dff">이  름</th>
<td width="200">
<input type="text" name="name" size="6" autofocus="autofocus"  required="required" value = "<%=dto.getName() %>">
</td>
</tr>
<tr height="30">
<th width="100" bgcolor="#dff">주  소</th>
<td width="200">
<input type="text" name="addr" size="6" required="required" value="<%=dto.getAddr() %>">
<input type="hidden" name="num" value="<%=dto.getNum() %>">
</td>
</tr>
<tr height="30">
<td colspan="2" bgcolor="#dff" align="center">
<input type="submit" value="db저장" style="width:100px; background: orange;">
<input type="button" value="db목록" style="width:100px; background: orange;" onclick="location.href='testlist.jsp'">
</td>
</tr>
</table>
</form>
</body>
</html>
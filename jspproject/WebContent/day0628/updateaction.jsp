<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="day0628.db.TestDao, day0628.db.TestDto" %>
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
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="db" class="day0628.db.TestDao"></jsp:useBean>
<jsp:useBean id="dto" class="day0628.db.TestDto"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
db.updateData(dto);
response.sendRedirect("testlist.jsp");
%>
</body>
</html>
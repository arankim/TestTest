<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="day0629.db.GuestDao" %>
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
GuestDao dao = GuestDao.getInstance();
%>
<jsp:useBean id="dto" class="day0629.db.GuestDto"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
dao.insertGuest(dto);
response.sendRedirect("guestlist.jsp");
%>
</body>
</html>
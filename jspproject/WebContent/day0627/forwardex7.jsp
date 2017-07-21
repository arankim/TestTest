<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	#cl-dashboard{display:none;}
</style>
</head>
<body>
<h2>포워드 7번 예제입니다.</h2>
<%
	String myimage=request.getParameter("myimage");
	String mymsg=request.getParameter("mymsg");
%>
<b>오늘의 메세지 : <%=mymsg %></b><br><br>
<img src="<%=myimage %>">
</body>
</html>
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
<%
	String name=request.getParameter("name");
	String age=request.getParameter("age");
%>
<b>전달받은 데이터</b>
<h4>이름 : <%=name %></h4> 
<h4>나이 : <%=age %></h4>
</body>
</html>
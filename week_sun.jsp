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
	body{background-color: #ffe4c4;}
</style>
</head>
<body>
<%
	String myimg=request.getParameter("myimg");
%>
일요일에 태어난 꼬마아이는 귀엽고 씩씩하고 명랑하지요!!!
<br><br>
<img src="../image/<%=myimg%>.jpg">
<br><br>
<a href="selectweek13.jsp">다시 선택</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
<<<<<<< HEAD
	#cl-dashboard{display:none;}
=======
#cl-dashboard {
	display: none;
}
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</style>
</head>
<body>
<%
<<<<<<< HEAD
	String myimage=request.getParameter("myimage");
	String mymsg=request.getParameter("mymsg");
%>
<b>오늘의 메세지 : <%=mymsg %></b><br><br>
<img src="<%=myimage %>">

=======
String myimage = request.getParameter("myimage");
String mymsg = request.getParameter("mymsg");
%>
<%=myimage %>
<br>
<%=mymsg %>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</body>
</html>
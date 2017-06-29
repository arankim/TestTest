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
<%--include와 다르게 여기에 출력문이 있어도 출력이 안됨 --%>
<h2>include와 차이점 => 출력x</h2>
<jsp:forward page="forwardex7.jsp">
	<jsp:param value="../image/chr13.gif" name="myimage"/>	
	<jsp:param value="Have a Nice Day" name="mymsg"/>
</jsp:forward>	
</body>
</html>
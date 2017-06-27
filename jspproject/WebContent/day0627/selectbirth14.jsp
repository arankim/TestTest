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
<h6>당신의 생일은</h6>
<form method="post" action="action14.jsp">
<select name="year">
<%
for(int i = 1950; i<=2017; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="month">
<%
for(int i = 1; i<=12; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
월&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="day">
<%
for(int i = 1; i<=31; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="name">
<br><br>
<input type="button" value="submit">
</form>
</body>
</html>
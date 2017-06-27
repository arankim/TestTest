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
<%
String select = request.getParameter("week");
String fileName = "week_"+select+".jsp";
%>
<jsp:forward page="<%=fileName %>">
<jsp:param value="<%=select %>" name="myimg" />
</jsp:forward>


</body>
</html>
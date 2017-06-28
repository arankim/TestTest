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
	String hp1=request.getParameter("hp1");
	String hp2=request.getParameter("hp2");
	String hp3=request.getParameter("hp3");
	String email1=request.getParameter("email1");
	String email2=request.getParameter("email2");
%>
<h2>핸드폰 & 이메일주소 출력</h2>
핸드폰 : <%=hp1 %>-<%=hp2 %>-<%=hp3 %> <br>
이메일 : <%=email1 %>@<%=email2 %>

</body>
</html>
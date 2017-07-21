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
	String code=request.getParameter("code");
	String viewPageURI=null;
	
	if(code.equals("A")){
		viewPageURI="../day0626/jspgugu4.jsp";
	} else if(code.equals("B")){
		viewPageURI="./day0626/jsptest1.jsp";
	} else if(code.equals("C")){
		viewPageURI="./day0626/jsptest2.jsp";
	}
%>
<jsp:forward page="<%=viewPageURI %>"/>	

</body>
</html>
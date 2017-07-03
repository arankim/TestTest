<%@page import="java.util.Vector"%>
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
	//request에 데이터 담기
	Vector<String> list=new Vector<>();
	list.add("red");
	list.add("green");
	list.add("magenta");
	list.add("orange");
	list.add("tomato");
	
	request.setAttribute("mylist", list);
%>

<%--포워드는 주소바뀌지 않고 request가 그대로 전달 --%>
<jsp:forward page="forwardex5.jsp"></jsp:forward>

</body>
</html>
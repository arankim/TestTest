<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
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
<pre>
포워드 5번파일입니다.
포워드의 특징
  1. url주소가 변하지 않는다.
  2. request가 그대로 전달되어 request에 담긴 데이터를 출력할 수 있다.
</pre>

<%
Vector<String> list = (Vector<String>)request.getAttribute("mylist");
for(String s : list){
%>
<b style="color:<%=s %>;">Happy day!</b><br>
<%
}
%>
</body>
</html>
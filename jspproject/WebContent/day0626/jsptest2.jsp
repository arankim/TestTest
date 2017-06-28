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
String name="한가인";
int age = 30;
%>

이름 : <%=name %><br>
나이 : <%=age %>세<br>
주소 : <%=addr %><br>
메소드호출 : <%=toAddress()%><br>

<%!  
String addr = "서울시 강동구";
public String toAddress()
{
	return addr;
}
%>
</body>
</html>
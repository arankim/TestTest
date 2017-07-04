<%@page import="day0703.db.MyPersonDto"%>
<%@page import="day0703.db.MyPersonDao"%>
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
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
String buseo = request.getParameter("buseo");
MyPersonDto dto = new MyPersonDto(name,buseo,age);
MyPersonDao dao = new MyPersonDao();
dao.insertPerson(dto);
%>
insert되었습니다.
</body>
</html>
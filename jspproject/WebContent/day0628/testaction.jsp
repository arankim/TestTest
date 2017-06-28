<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="day0628.db.TestDao, day0628.db.TestDto" %>
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
TestDto  dto = new TestDto();
TestDao db = new TestDao();

request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String addr = request.getParameter("addr");
dto.setName(name);
dto.setAddr(addr);

//db insert
db.insertData(dto);
%>
<h2>db에 추가되었습니다.</h2>
<a href="testlist.jsp">db 목록 확인</a>
</body>
</html>
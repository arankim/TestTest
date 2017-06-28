<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jspproject.Student" %>
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
response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id ="stu" class="jspproject.Student" />
<!--  stu의 멤버와 같은 이름은 자동으로 읽어서 주입(setter)한다. -->
<jsp:setProperty property="*" name="stu"/>

<h2>데이타 확인하기</h2>
이름 : <%=stu.getName() %>
국어 : <%=stu.getKor() %>
영어 : <%=stu.getEng() %>
수학 : <%=stu.getMat() %>
</body>
</html>
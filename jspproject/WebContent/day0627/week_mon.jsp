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
String myimg = request.getParameter("myimg");
%>
월요일에 태어난 아이는 이뻐요.
<br><br>
<<<<<<< HEAD
<<<<<<< HEAD
<%-- <img src="../image/<%=myimg %>.jpg"> --%>
<img src="../image/ani02.gif">
=======
<img src="../image/<%=myimg %>.jpg">
>>>>>>> branch 'master' of https://github.com/arankim/jspTest.git
=======
<img src="../image/<%=myimg %>.jpg">
>>>>>>> 3945cebb08fbc6b36648ab078433675282efb82a
<br><br>
<a href="selectweek.jsp">다시선택</a>
</body>
</html>
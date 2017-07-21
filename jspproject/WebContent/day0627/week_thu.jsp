<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
<<<<<<< HEAD
	#cl-dashboard{display:none;}
	body{background-color: #ffe4c4;}
=======
#cl-dashboard {
	display: none;
}
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</style>
</head>
<body>
<%
<<<<<<< HEAD
	String myimg=request.getParameter("myimg");
%>
목요일에 태어난 아이는 길을 떠나요!!!
<br><br>
<img src="../image/<%=myimg%>.jpg">
<br><br>
<a href="selectweek13.jsp">다시 선택</a>
=======
String myimg = request.getParameter("myimg");
%>
목요일에 태어난 아이는 길을 떠나요
<br><br>
<<<<<<< HEAD
<<<<<<< HEAD
<%-- <img src="../image/<%=myimg %>.jpg"> --%>
<img src="../image/ani05.gif">
=======
<img src="../image/<%=myimg %>.jpg">
>>>>>>> branch 'master' of https://github.com/arankim/jspTest.git
=======
<img src="../image/<%=myimg %>.jpg">
>>>>>>> 3945cebb08fbc6b36648ab078433675282efb82a
<br><br>
<a href="selectweek.jsp">다시선택</a>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</body>
</html>
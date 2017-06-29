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
</style>
</head>
<body>
<%	
	//week 데이터 읽기
	String week=request.getParameter("week");
	
	//forward할 파일명 변수로 선언하기 
	String fileName="week_"+week+".jsp";
	
%>
<!--해당 요일로 forward하기 : param으로 myimg전달-->
	<jsp:forward page="<%=fileName%>">
		<jsp:param value="<%=week%>" name="myimg"/>
	</jsp:forward>
<br><br>
=======
#cl-dashboard {
	display: none;
}
</style>
</head>
<body>
<%
String select = request.getParameter("week");
String fileName = "week_"+select+".jsp";
%>
<jsp:forward page="<%=fileName %>">
<jsp:param value="<%=select %>" name="myimg" />
</jsp:forward>

>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca

</body>
</html>
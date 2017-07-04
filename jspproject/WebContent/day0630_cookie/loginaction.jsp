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
String amho = request.getParameter("amho");
//암호가 맞으면 쿠키생성

if(amho.equals("1234")){
	Cookie cookie = new Cookie("loginok",amho);
	cookie.setMaxAge(10);  //유지시간 : 1시간
	cookie.setPath("/"); //저장 위치는 루트
	response.addCookie(cookie); //브라우저에 쿠키 저장
	response.sendRedirect("cookiemain.jsp"); //메인파일로 이동
	
} else {
%>
<script type="text/javascript">
alert("암호가 맞지 않아요.");
</script>
<%
}
%>
</body>
</html>
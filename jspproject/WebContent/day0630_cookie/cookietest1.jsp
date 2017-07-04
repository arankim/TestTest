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
<h2>쿠키 저장 예제</h2>
<%
Cookie cookie1 = new Cookie("msg","Have a Nice Day");
cookie1.setPath("/"); //쿠키 저장 위치
cookie1.setMaxAge(10); //쿠키 유지시간은 10초
response.addCookie(cookie1); //브라우저에 추가

Cookie cookie2 = new Cookie("myid","angel");
cookie1.setPath("/");
cookie1.setMaxAge(10);
response.addCookie(cookie2);

response.sendRedirect("cookieresult2.jsp");
%>
</body>
</html>
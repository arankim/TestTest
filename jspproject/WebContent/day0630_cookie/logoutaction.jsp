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
Cookie[] cookies = request.getCookies();
if(cookies!=null){
	for(int i = 0; i<cookies.length; i++){
		if(cookies[i].getName().equals("loginok")){
			//해당쿠키를 브라우저에서 삭제
			cookies[i].setPath("/");
			cookies[i].setMaxAge(0); //쿠키21를 삭제하는 방법 . 유지시간을 없애버리는 방법으로 쿠키를 삭제해야함.
			response.addCookie(cookies[i]);
		}
	}
}
response.sendRedirect("cookiemain.jsp");
%>
</body>
</html>
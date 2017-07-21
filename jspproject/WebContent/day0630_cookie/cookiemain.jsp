<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
boolean login = false; //로그인상태면 true
//브라우저에 저장된 쿠키값을 모두 얻는다
Cookie [] cookies = request.getCookies();
if(cookies!=null){
	for(int i = 0; i<cookies.length; i++){
		//쿠키들 중 loginok라는 쿠키가 있으면 login변수를 true로 준다...
		if(cookies[i].getName().equals("loginok"))
			login = true;
	}
}

if(login){
	%>
	<jsp:include page="cookielogout.jsp" />
	<%
	} else {%>
	<jsp:include page="cookielogin.jsp" />
	<%
	}
	%>
<hr align="left" width="300" size="5" color="orange">
<h2>오늘의 주요기사</h2>
<jsp:include page="paper.jsp" />
</body>
</html>
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
boolean login = false;
Cookie [] cookies = request.getCookies();
if(cookies!=null){
	for(int i = 0; i<cookies.length; i++){
		//쿠키들 중 loginok라는 쿠키가 있으면 login변수를 true로 준다...
		if(cookies[i].getName().equals("loginok"))
			login = true;
	}
}
%>
<ol>
<li><a href="gisa1.jsp" >서울 아파트 매매가 상승률 3주연속 둔화</a>
<li><a href="gisa2.jsp" >매일 이웃집 아저씨 찾아가는 5세 소년의 사연</a>
<li><a href="gisa3.jsp" >[월드피플+] “내 딸이 돼줄래?”…‘두 여자’에게 프러포즈한 남자</a>
</ol>

</body>
</html>
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
<pre>
지난 18일 미국에서 한 16세 소녀가 ‘아버지의 날’(6월 세 번째 일요일)을 맞아 자신의 트위터에 공개한 사연이 사람들의 마음에 잔잔한 감동을 전하고 있다.

미국 일리노이주(州) 벨빌에 사는 소녀 몰리 크레이븐스는 “자신의 집에 거의 매일 오는 작은 손님이 있다”고 밝혔다.

그 손님은 바로 옆집에 사는 5세 소년 브라이언 켈리. 그런데 몰리의 집에는 소년보다 나이가 한참이나 많은 세 자매밖에 없다고 한다. 그렇다면 왜 이 소년은 거의 매일 이웃집을 방문하고 있는 것일까.</pre>
</body>
<%
} else {
%>
<script type="text/javascript">
alert("로그인 해주세요.");
history.back();
</script>
<%
}
%>
</html>
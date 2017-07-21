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
(서울=연합뉴스) 서미숙 기자 = 정부의 부동산 대책 여파로 매수세가 줄면서 서울 아파트 매매가 상승률이 3주 연속 둔화했다.

30일 부동산114 조사에 따르면 이번 주 서울 아파트값은 0.16% 상승했다. 이달 초 0.45%의 주간 상승률을 기록한 후 정부의 부동산 중개업소 단속과 6·19 부동산 대책 발표로 3주 연속 오름폭이 둔화했다.

서울 전체 재건축 상승 폭이 0.11%로 지난주(0.08%)보다 다소 커졌지만 강동구(-0.18%)와 송파구(-0.07%)의 재건축은 호가가 하락했다.
</pre>
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
</body>
</html>
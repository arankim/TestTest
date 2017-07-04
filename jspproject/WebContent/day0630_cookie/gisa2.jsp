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
▲ 딸 아드리아나는 자신에게 사랑을 맹세한 아빠가 생기게 되어 기쁨을 감추지 못하고 있다. (사진=데일리메일)


센스있는 한 남성의 프러포즈가 두 여성을 감동시켰다.

영국 데일리메일은 22일(현지시간) 미혼모 여자친구를 감동시킨 훈남 남친의 청혼방법을 소개했다. 

미국 인디애나주 출신의 그랜트 트라이베트(29)는 지난해 여자친구 카산드라 레스차(26)와 페이스북을 통해 만나 7개월 전부터 만남을 갖기 시작했다. 데이트를 시작하면서 그는 여친의 딸 아드리아나(5)가 그녀의 소중한 일부란 사실을 알게 됐고, 두 모녀의 마음을 얻어야겠다고 생각했다. 

지난달 27일 트라이베트는 두 여자를 데리고 아침 브런치를 먹으러 나왔다. 밥을 먹는 도중에 청혼을 할 순 없어 적절한 순간을 기다렸다. 한 시간 뒤 리체 우즈 자연보호구역으로 자리를 옮겼고, 레스차가 하이힐을 신었다는 사실도 인지하지 못한채 모녀를 숲속에서 1마일(약 1.6km)을 걷게 했다. 


[출처: 서울신문에서 제공하는 기사입니다.] http://nownews.seoul.co.kr/news/newsView.php?id=20170623601005#csidx80703c968507edea485e6790e021481 
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
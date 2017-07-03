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
<script type="text/javascript">
var i = 10;
$(function(){
	intern = setInterval(function() {
		i--;
		$("#cnt").text(i)
		
		if(i == 0){
			clearInterval(intern); 
			$("body").append("시간이 완료되었습니다.");
		}
	}, 1000);
});
</script>
</head>
<%
session.setAttribute("lotto", "nara"); //lotto라는 name으로 nara라는 value를 선언함.
session.setMaxInactiveInterval(10); //10초동안 유지
%>
<body>
<h2>남은 시간 <b style="color:red;" id="cnt"></b></h2>
<form action="sessionaction.jsp" method="post">
<b>여행가고 싶은 나라를 선택하세요</b>
<br><br>
<input type="radio" name="nara" value="태국3박4일">태국3박4일
<input type="radio" name="nara" value="미국 8박9일">미국 8박 9일
<input type="radio" name="nara" value="제주도 2박3일">제주도 2박3일
<input type="radio" name="nara" value="유럽 한달">유럽한달
<br><br>
<input type="submit" value="여행지 선택하기" />
</form>
</body>
</html>
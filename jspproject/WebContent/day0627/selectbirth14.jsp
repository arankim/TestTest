<<<<<<< HEAD
<%@page import="java.util.Calendar"%>
=======
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
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
<script type="text/javascript">
function check(){
	//문자일 경우
	if(isNaN($("#month").val())){
		alert("월을 숫자로만 입력해주세요.")
		$("#month").focus();
		return false; //액션못넘어가게 반환
	}
	if(isNaN($("#day").val())){
		alert("일을 숫자로만 입력해주세요.")
		$("#day").focus();
		return false; 
=======
#cl-dashboard {
	display: none;
}
</style>
<<<<<<< HEAD
<<<<<<< HEAD
<script type="text/javascript">
function check(){
	
	//문자일경우
	if(isNaN($("#day").val())){
		alert("일을 숫자로만 입력해주세요");
		$("#day").focus();
		return false;
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
	}
}
</script>
</head>
<body>
<<<<<<< HEAD
<%
	Calendar cal=Calendar.getInstance();
	int year=cal.get(Calendar.YEAR);
%>
<form action="action14.jsp" method="post" onsubmit="return check();">
<!-- onsubmit="return false;" : 액션전에 문자섞여있는거 확인 -->
<h2>당신이 태어난 날짜를 입력하세요</h2>
<select style="width: 100px; height: 30px;" name="year">
	<%for(int y=year;y>=1950;y--){
	%>
		<option value="<%=y%>"><%=y%></option>
	<%
	}
	%>
</select>
년&nbsp;
<input type="text" name="month" size="4" required="required" id="month">
월&nbsp;
<input type="text" name="day" size="4" required="required" id="day">
일
<br><br>
<input type="submit" value="결과보기" style="width: 100px;">
=======
<h6>당신의 생일은</h6>
<form action="action14.jsp" method="post" onsubmit="return check()" >
<select name="year">
<%
for(int i = 1950; i<=2017; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="month">
<%
for(int i = 1; i<=12; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
월&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="day" size="4" required="required" id="day">
일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br><br>
<input type="submit" value="확인">
=======
=======
>>>>>>> 3945cebb08fbc6b36648ab078433675282efb82a
</head>
<body>
<h6>당신의 생일은</h6>
<form method="post" action="action14.jsp">
<select name="year">
<%
for(int i = 1950; i<=2017; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="month">
<%
for(int i = 1; i<=12; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
월&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="day">
<%
for(int i = 1; i<=31; i++){
%>
<option value="<%=i %>"><%=i %></option>
<%
}
%>
</select> 
일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="name">
<br><br>
<input type="button" value="submit">
<<<<<<< HEAD
>>>>>>> branch 'master' of https://github.com/arankim/jspTest.git
=======
>>>>>>> 3945cebb08fbc6b36648ab078433675282efb82a
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</form>
</body>
</html>
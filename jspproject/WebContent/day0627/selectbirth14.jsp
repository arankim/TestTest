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
<<<<<<< HEAD
<<<<<<< HEAD
<script type="text/javascript">
function check(){
	
	//문자일경우
	if(isNaN($("#day").val())){
		alert("일을 숫자로만 입력해주세요");
		$("#day").focus();
		return false;
	}
}
</script>
</head>
<body>
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
</form>
</body>
</html>
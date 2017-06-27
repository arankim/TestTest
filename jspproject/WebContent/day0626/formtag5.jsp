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
<form action="action5.jsp" method="post">
메세지 : <input type="text" name="msg" size="10" required="required"><br>
글자색 : 
<select name="sel">
<option value="red">빨강색</option>
<option value="blue">파랑색</option>
<option value="magenta">분홍색</option>
</select>
<br>
<input type="submit" value="서버로 전송" >
</form>
</body>
</html>
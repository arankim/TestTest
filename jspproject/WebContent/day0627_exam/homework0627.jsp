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
<form action="action0627.jsp" method="post">
<select name="tel1">
<option value="010">010</option>
<option value="010">019</option>
<option value="010">011</option>
<option value="010">017</option>
<option value="010">018</option>
</select>
- 
<input type="text" name="tel2">
-
<input type="text" name="tel3">
<br>
<input type="text" name="email1">
@
<input type="text" name="email2">
&nbsp;&nbsp;&nbsp;
<select name="emailselect" onchange = "return selectEmail()">
<option value="naver.com">naver.com</option>
<option value="hanmail.net">hanmail.net</option>
<option value="gmail.net">gmail.net</option>
</select>
<br><br>
<input type="submit" value="전송">
</form>
</body>
</html>
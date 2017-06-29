<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	#cl-dashboard{display:none;}
</style>
</head>
<body>
<form action="action18.jsp" method="post">
	이름 : <input type="text" name="name" size="6"><br>
	국어 : <input type="text" name="kor" size="6"><br>
	영어 : <input type="text" name="eng" size="6"><br>
	수학 : <input type="text" name="mat" size="6"><br>
	<br>
	<input type="submit" value="전송">
</form>
</body>
</html>
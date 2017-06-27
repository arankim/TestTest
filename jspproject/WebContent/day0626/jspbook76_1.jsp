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
<form action="jspbook76_2.jsp" method="post">
이름 : <input type="text" name="name" size="10"><br>
주소 : <input type="text" name ="address" size="30"><br>
좋아하는 동물 : 
<input type="checkbox" name="pet" value="dog">강아지
<input type="checkbox" name="pet" value="cat">고양이
<input type="checkbox" name="pet" value="pig">돼지
<br>
<input type="submit" value="전송">
</form>
</body>
</html>
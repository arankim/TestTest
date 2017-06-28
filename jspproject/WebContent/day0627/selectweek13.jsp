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
<h2>당신이 태어난 요일을 선택하세요</h2>
<form action="action13.jsp" method="post">
<select style="width: 100px;" name="week">
<option value="mon">월요일</option>
<option value="tue">화요일</option>
<option value="wed">수요일</option>
<option value="thu">목요일</option>
<option value="fri">금요일</option>
<option value="sat">토요일</option>
<option value="sun">일요일</option>
</select>
<br><br>
<input type="button" value="결과보기">
</form>
</body>
</html>
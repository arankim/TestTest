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
	<form action="action6.jsp" method="post">
		운전면허 : <input type="checkbox" name="license">운전면허 
		<br><br> 
		취미 : <input type="checkbox" name="hobby" value="게임">게임&nbsp;
		<input type="checkbox" name="hobby" value="여행">여행&nbsp;
		<input type="checkbox" name="hobby" value="낚시">낚시&nbsp; 
		<input type="checkbox" name="hobby" value="영화감상">영화감상&nbsp; 
		<br><br>
		구현 가능한 언어 선택 :
		<select size="5" name="lang" multiple="multiple">
		<option value="java">java</option>
		<option value="jsp">jsp</option>
		<option value="javascript">javascript</option>
		<option value="spring">spring</option>
		<option value="html5">html5</option>
		</select>
		<br><br>
		<input type="submit" value="서버에 전송">
	</form>
</body>
</html>
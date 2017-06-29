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
<jsp:useBean id="stu" class="data.stu.Student" scope="request"/>
<!-- request에 저장되는거 -->
<h2>학생에 대한 정보 출력</h2>
이름 : <jsp:getProperty property="name" name="stu" /><br>
국어 : <jsp:getProperty property="kor" name="stu" /><br>
영어 : <jsp:getProperty property="eng" name="stu" /><br>
수학 : <jsp:getProperty property="mat" name="stu" /><br>

</body>
</html>
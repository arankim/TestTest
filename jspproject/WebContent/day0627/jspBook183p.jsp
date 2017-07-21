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
<h2>옵션 선택 화면</h2>
<hr>
<form action="<%=request.getContextPath()%>/day0627/jspBook184p.jsp">

보고 싶은 페이지 선택:
	<select name="code">
		<option value="A">A 페이지</option>
		<option value="B">B 페이지</option>
		<option value="C">C 페이지</option>	
	</select>
	
	<input type="submit" value="이동">
	
</form>

</body>
</html>
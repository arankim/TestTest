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
<%--3에서 작성 2에서 실행 --%>
<h2>includeex3.jsp의 결과 페이지를 가져오겠습니다.</h2>
<hr>
<jsp:include page="includeex3.jsp">
	<jsp:param value="../image/chr13.gif" name="myimage"/>
	<jsp:param value="Have a Nice Day" name="mymsg"/>
</jsp:include>
</body>
</html>
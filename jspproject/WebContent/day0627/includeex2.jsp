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
<h2>includee3.jsp의 결과페이지를 가져오겠습니다.</h2>
<hr>
<jsp:include page="includeex3.jsp">
<jsp:param value="../image/chr06.gif" name="myimage" />
<jsp:param value="Have a nice day" name="mymsg" />
</jsp:include>
</body>
</html>
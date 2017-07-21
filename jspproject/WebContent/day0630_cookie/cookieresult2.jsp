<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				out.write(i + " 번지 쿠키<br>");
				String name = cookies[i].getName();
				String val = cookies[i].getValue();
	%>
	<%=name%>
	=>
	<%=val%>(<%=cookies[i].getMaxAge()%>)
	<br>
	<%
		}
		}
	%>
</body>
</html>
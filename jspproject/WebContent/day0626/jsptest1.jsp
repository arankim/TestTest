<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
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
	<h1>주석처리는 어떻게 하나요</h1>
	<!-- html 주석처리 -->
	<%-- jsp 주석처리 --%>
	<h1>jsp 파일에서 자바코드를 쓰려면 어떻게 하나요??</h1>
	<%
		//java영역 / 스크립트릿(scriptlet) 이라고 합니다.
		//java.util.Date date1 = new java.util.Date();
	    Date date1 = new Date();
		int y = date1.getYear()+1900;
		int m = date1.getMonth()+1;
		int d = date1.getDate();
		
		out.println(y+"<br>");
		out.println(m+"<br>");
		out.println(d);
	%>
	<h3>표현식을 이용하여 날짜를 출력합시다.</h3>
	<%=y %>년 <%=m %>월 <%=d %>일입니다.<br>
</body>
</html>
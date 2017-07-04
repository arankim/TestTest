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
	<%
		request.setCharacterEncoding("UTF-8");
		String lic = request.getParameter("license");
		String[] hobby = request.getParameterValues("hobby");
		String[] language = request.getParameterValues("lang");
	%>
	운전면허 :
	<%=lic == null ? "없음" : "있음"%>
	<br>
	나의취미 : 
	<%
		if (hobby == null) {
	%>
	<b style="red">취미 없음</b>
	<%
		} else {
			for (String hob : hobby) {
	%>
	<%=hob%>
	<%
		}
		}
	%>
	<br>
	나의 언어 : 
	<%
	if(language == null){
	%>
	<b style="red">가능한 언어 없음</b>
	<%
	} else {
		for(String lang : language){
	%>
	<%=lang %>
	<%
		}
	}
	%>
	<br>
</body>
</html>
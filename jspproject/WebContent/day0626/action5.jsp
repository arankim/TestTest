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
String msg = request.getParameter("msg");
String selcolor = request.getParameter("sel");
%>
<h2>폼태그에 입력한 값들</h2>
색상 : <%=selcolor %><br>
<b style="color: <%=selcolor %>; "><%=msg %></b><br>
<a href="javascript:history.back();">다시선택</a>
<a href="formtag5.jsp">다시 선택2</a>
</body>
</html>
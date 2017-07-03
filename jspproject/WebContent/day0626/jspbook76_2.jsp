<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration, java.util.Map" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
<h5>request.getParameter()메서드 사용</h5>
name 파라미터 = <%=request.getParameter("name") %>
address 파라미터 = <%=request.getParameter("address") %>
<hr>
<h5>request.getParameterValues()메서드 사용</h5>
<%
String[] values = request.getParameterValues("pet");
if(values != null){
	for(int i = 0; i<values.length; i++){
%>
<%=values[i] %>
<%
	}
}
%>
<hr>
<h5>request.getParameterNames()메서드 사용</h5>
<%
Enumeration paramEnum = request.getParameterNames();
while(paramEnum.hasMoreElements()){
	String name = (String)paramEnum.nextElement();
%>
<%=name %>
<%
}
%>
<hr>
<h6>request.getParameterMap메서드 사용</h6>
<%
Map map = request.getParameterMap();
String[] nameParam = (String[])map.get("name");
if(nameParam != null){
%>
name = <%=nameParam[0] %>
<%
}
%>
</body>
</html>
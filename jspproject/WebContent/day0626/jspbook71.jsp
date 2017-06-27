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
<%!
public int add(int a, int b){
	int c = a + b;
	return c;
}

public int subtract(int a, int b){
	int c = a - b;
	return c;
}
%>
<% 
int value1 = 3;
int value2 = 9;

int addResult = add(value1, value2);
int subtractResult = subtract(value1, value2);
%>

<%=value1 %> + <%=value2 %> = <%=addResult %>
<br>
<%=value1 %> + <%=value2 %> = <%=subtractResult %>
</body>
</html>
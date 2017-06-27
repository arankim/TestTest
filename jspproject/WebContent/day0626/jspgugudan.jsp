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

table {
	border: 1px solid yellow;
}

th, tr, td {
	border: 1px solid yellow;
}
</style>
</head>
<body>
	<table>
	<tr>
		<%
			for (int dan = 2; dan <= 9; dan++) {
		%>
		<th><%=dan%>단</th>
		<%
			}
		%>
		</tr>
		<tr>
			<%
				for (int i = 1; i <= 9; i++) {
					for (int dan = 2; dan <= 9; dan++) {
			%>
			<td><%=dan%>* <%=i%>=<%=(dan * i)%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>
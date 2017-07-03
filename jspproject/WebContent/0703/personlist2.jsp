<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="day0703.db.MyPersonDao,java.util.Vector,day0703.db.MyPersonDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
#cl-dashboard {
	display: none;
}
</style>
</head>
<body>
	<%
		MyPersonDao db = new MyPersonDao();
		int totalCount = db.getTotalCount();
		HashMap<Object,Object> map = db.getcountBuseo();
	%>
	<input type="button" class="btn btn-info btn-sm" value="전체출력"
		onclick="location.href='personlist.jsp'">
	<input type="button" class="btn btn-info btn-sm" value="연령별통계"
		onclick="location.href='personlist3.jsp'">
	<br>
	<br>
	<table class="table table-bordered" style="width: 600px;">
		<tr>
			<th>부서명</th>
			<th>부서Count</th>
		</tr>
		<%
			if (totalCount == 0) {
		%>
		<tr>
			<td colspan="6" align="center"><b>등록된 자료가 없습니다.</b></td>
		</tr>
		<%
			} else {
				Set<Object> k = map.keySet();
				for(Object key : k){
		%>
		<tr>
			<td><%=key %></td>
			<td><%=(map.get(key)) %></td>
		</tr>
		<%
				}	
			}
		%>
	</table>
</body>
</html>
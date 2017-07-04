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
		Vector<MyPersonDto> list = db.getAllSawons();
		MyPersonDto dto = new MyPersonDto();
	%>
	<input type="button" class="btn btn-info btn-sm" value="사원추가"
		onclick="location.href='personform.jsp'">
	<input type="button" class="btn btn-info btn-sm" value="부서별통계"
		onclick="location.href='personlist2.jsp'">
	<input type="button" class="btn btn-info btn-sm" value="연령별통계"
		onclick="location.href='personlist3.jsp'">
	<br>
	<br>
	<table class="table table-bordered" style="width: 600px;">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>부서</th>
			<th>입사일</th>
			<th>편집</th>
		</tr>
		<%
			if (totalCount == 0) {
		%>
		<tr>
			<td colspan="6" align="center"><b>등록된 자료가 없습니다.</b></td>
		</tr>
		<%
			} else {
				for (int i = 0; i < list.size(); i++) {
					dto = list.get(i);
		%>
		<tr>
			<td><%=dto.getNum()%></td>
			<td><%=dto.getName()%></td>
			<td><%=dto.getAge()%></td>
			<td><%=dto.getBuseo()%></td>
			<td><%=dto.getIpsaday()%></td>
			<td align="center">
			<input type="button" class="btn btn-danger btn-xs" value="수정" 
			onclick="locaion.href='personupdateform.jsp?num=<%=dto.getNum()%> '">
			<input type="button" class="btn btn-info btn-xs" value="삭제" ></td>
		</tr>
		<%
			}
			}
		%>
	</table>
</body>
</html>
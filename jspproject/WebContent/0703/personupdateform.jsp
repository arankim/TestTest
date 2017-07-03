<%@page import="day0703.db.MyPersonDto"%>
<%@page import="day0703.db.MyPersonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
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
request.setCharacterEncoding("UTF-8");
int num = Integer.parseInt(request.getParameter("num"));
MyPersonDao dao = new MyPersonDao();
MyPersonDto dto = dao.getSelectPerson(num);

%>
	<form action="personaction.jsp" method="post">
		<table class="table table-bordered" style="width: 400px;">
		<caption><b>사원 수정하기</b></caption>
			<tr>
				<td>사원명</td>
				<td><input type="text" class="form-control" required="required" name="name"
					size="10" value="<%=dto.getName() %>"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" class="form-control" required="required" name="age"
					size="10" value="<%=dto.getAge() %>"></td>
			</tr>
			<tr>
				<td>부 서</td>
				<td><select class="form-control" name="buseo" >
				<%
				String [] s = {"교육부","인사부","관리부","홍보부"};
				String mys = dto.getBuseo();
				for(String  ss : s){
					%>
				<option value="<%=ss %>"><%=mys.equals(ss)?"selected":"" %>><%=ss %></option>
				<%
				}
				%>
			
						<option value="교육부">교육부</option>
						<option value="인사부">인사부</option>
						<option value="관리부">관리부</option>
						<option value="홍보부">홍보부</option>
				</select></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<input type="submit" value="사원추가"
					class="btn btn-warning btn-sm"> 
				<input type="button"
					class="btn btn-success btn-sm" style="margin-left: 100px;" value="사원목록"
					onclick="location.href='personlist.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
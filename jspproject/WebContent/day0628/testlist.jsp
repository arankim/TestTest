<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@page import="day0628.db.TestDao,day0628.db.TestDto,java.util.*"%>
=======
<%@page import="day0628.db.TestDao"%>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
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
<<<<<<< HEAD
	border: 2px groove black;
}

a:LINK {text - decoration :none;
	font-size: 10pt;
	color: black;
}

a: HOVER {
	text-decoration: underLine;
=======
border : 2px groove black;
}

a:LINK {
text - decoration : none;
font-size:10pt;
color: black;
}

a: HOVER{
text-decoration: underLine;


>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
}
</style>
</head>
<body>
<<<<<<< HEAD
	<%-- <%
TestDao db = new TestDao();
//db.getConnection();
%> --%>
	<jsp:useBean id="db" class="day0628.db.TestDao"></jsp:useBean>
	<%
int tot = db.getTotlalcount();
%>

	<a href="testform.jsp"><img src="../image/btn13.gif" title="데이타추가"
		style="margin-left: 300px;" width="30"></a>
	<br>
	<table style="margin: 0 auto;">
		<caption>
			<b>[testjsp 테이블 내용 출력]</b>
		</caption>
		<tr bgcolor="#ffc" height="30">
=======
<%-- <%
TestDao db = new TestDao();
//db.getConnection();
%> --%>
<jsp:useBean id="db" class="day0628.db.TestDao"></jsp:useBean>
<%
int tot = db.getTotlalcount();
%>

		<a href="testform.jsp"><img src="../image/btn13.gif" title="데이타추가" style="margin-left: 300px;"
			width="30"></a>
		<br>
		<table style="margin: 0 auto;">
			<caption> <b>[testjsp 테이블 내용 출력]</b></caption>
			<tr bgcolor="#ffc" height="30"> 
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
			<th width="100">번호</th>
			<th width="100">이름</th>
			<th width="150">주소</th>
			<th width="100">편집</th>
		</tr>
<<<<<<< HEAD
		<% 
		Vector<TestDto> list = db.getAllDatas();
		for (int i = 0; i<list.size(); i++){
		TestDto dto = list.get(i);
		%>
		<tr>
			<td align="center"><%=i+1 %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getAddr() %></td>
			<td align="center">
			<a href="updateform.jsp?num=<%=dto.getNum() %>">수정</a>/ 
			<a href="deleteaction.jsp?num=<%=dto.getNum() %>">삭제</a> 
			</td>
			</tr>
		<% } %>
	</table>
=======
		</table>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</body>
</html>
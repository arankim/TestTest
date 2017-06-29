<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="day0628.db.homework.*, java.util.Vector, java.text.DecimalFormat" %>
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
border : 2px groove black;
}

tr,td,th{
border : 1px groove gray;
}

a:LINK {
text - decoration : none;
font-size:10pt;
color: black;
}

a: HOVER{
text-decoration: underLine;
}
</style>
</head>
<body>
<jsp:useBean id="db" class="day0628.db.homework.SangpumDao"></jsp:useBean>
		<a href="sangpumform.jsp"><img src="../image/btn13.gif" title="데이타추가" style="margin-left: 300px;"
			width="30"></a>
		<br>
		<table style="margin: 0 auto;">
			<caption> <b>[sangpum 테이블 내용 출력]</b></caption>
			<tr bgcolor="#ffc" height="30"> 
			<th width="100">번호</th>
			<th width="100">상품명</th>
			<th width="150">수량</th>
			<th width="100">단가</th>
			<th width="100">총금액</th>
		</tr>
		<% 
		Vector<SangpumDto> list = db.getAllSangpum();
		DecimalFormat df = new DecimalFormat("#,##0");
		for (int i = 0; i<list.size(); i++){
		SangpumDto spd = list.get(i);
		%>
		<tr>
		<td align="center"><%=i+1 %></td>
		<td><%=spd.getSang() %></td>
		<td><%=spd.getSu() %></td>
		<td><%=spd.getDan() %></td>
		<td><%=df.format((double)spd.getDan() * spd.getSu()) %></td>
		<td align="center">
		<a href="sangpum_updateform.jsp?num=<%=spd.getNum() %>">수정</a>/
		<a href="">삭제</a>
		<% } %>
		</table>
</body>
</html>
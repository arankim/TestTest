<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
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
	border: 1px solid gray;
}

tr, td, th {
	border: 1px solid green;
	font-size: 11pt;
}
</style>
</head>
<body>
	<%
		//변수선언
		String[] str1 = { "red", "green", "blue", "magenta", "gray", "orange", "tomato" };

		List<String> lstArr = new Vector<>();
		lstArr.add("국화꽃");
		lstArr.add("장미꽃");
		lstArr.add("백합꽃");
		lstArr.add("안개꽃");
		lstArr.add("수국꽃");
		
	     final int  num = lstArr.size();
	%>

	<h2>배열값 출력하기</h2>
	<table>
		<tr>
			<th width="100">배열값</th>
			<th width="100">컬렉션 값</th>
		</tr>

		<%
		 
			for (int i = 0; i < str1.length; i++) {			
					if( num<= i ) {
						lstArr.add(i," ");
					}
		%>
	
	<tr>
			<td bgcolor="<%=str1[i]%>"><%=str1[i]%></td>
			<td bgcolor="<%=str1[i]%>"><%=lstArr.get(i) %></td>
		</tr>
		<%
			}
		
		for(int i = 0; i<lstArr.size(); i++){
			if(lstArr.get(i) == " "){
				lstArr.remove(i);
			}
			System.out.println("i: "+i+" "+"lstArr.get(i): "+lstArr.get(i));
		}
		%>


		<%-- <%
	for(int i = 0; i<lstArr.size(); i++){
	%>
	<td bgcolor="<%=str1[i] %>"><%=lstArr.get(i) %></td>
	<% } %> --%>
	</table>
</body>
</html>
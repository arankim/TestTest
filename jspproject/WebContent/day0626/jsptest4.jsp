<%@page import="java.text.NumberFormat"%>
<%@page import="jspproject.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
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
	border: 3px solid gray;
}

tr, td, th {
	border: 1px solid green;
	font-size: 11pt;
}
</style>
</head>
<body>
	
	<%
		//데이터를 묶어서 클래스형식으로 담기
		List<Student> arr = new ArrayList<>();
		//데이터 넣는 방법
		arr.add(new Student("아이유", 90, 80, 70));
		arr.add(new Student()); //default는 class에 기본입력값이 들어감
		arr.add(new Student("이효리", 78, 98, 99));
		arr.add(new Student("강호동", 56, 67, 88));
		arr.add(new Student("유재석", 100, 78, 90));
	%>
	<h2>ArrayList에 들어있는 학생정보 출력하기</h2>
	<table>
		<tr bgcolor="#f0ffff">
			<th width="50">번호</th>
			<th width="100">이름</th>
			<th width="70">국어</th>
			<th width="70">영어</th>
			<th width="70">수학</th>
			<th width="70">총점</th>
			<th width="70">평균</th>
		</tr>
		<%
			for (int i = 0; i < arr.size(); i++) {
				//arr에 들어있는 학생정보를 차례대로 얻는다
				Student ss = arr.get(i);
				//총점 구하기
				int tot = ss.getKor() + ss.getEng() + ss.getMat();
				//평균 구하기
				double avg = tot / 3.0;
		%>
		<tr>
			<td><%=i + 1%></td>
			<td><%=ss.getName()%></td>
			<td align="right"><%=ss.getKor()%></td>
			<td align="right"><%=ss.getEng()%></td>
			<td align="right"><%=ss.getMat()%></td>
			<td align="right"><%=tot%></td>
			<%--<td align="right"><%=avg%></td> --%>
			<td align="right">
				<%-- 콤마 찍거나 소수점이하 정리할때 사용 --%> <%=NumberFormat.getInstance().format(avg)%></td>
		</tr>
		<%}
 %>
	</table>

</body>
</html>

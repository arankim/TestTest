<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	#cl-dashboard{display:none;}
</style>
</head>
<body>
<table>
	<tr height="200">
		<th width="100">구구단 결과</th>
		<td>
			<jsp:include page="../day0626/jspgugu4.jsp"></jsp:include>	
		</td>
	</tr>
	<tr height="200">
		<th width="100">폼태그</th>
		<td>
			<jsp:include page="../day0626/formtag5.jsp"></jsp:include>	
		</td>
	</tr>
</table>
</body>
</html>
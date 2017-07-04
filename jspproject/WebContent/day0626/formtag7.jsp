<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

tr, td, th {
	border: 1px solid pink;
}
</style>
</head>
<body>
	<h2>폼 태그값들 읽기</h2>
	<form action="action7.jsp" method="post">
		<table>
			<tr>
				<th width="150">이름</th>
				<td width="300"><input type="text" name="name" size="5" required="required"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" name="gender" value="남자" checked="checked">남자&nbsp;
					<input type="radio" name="gender" value="여자">여자</td>
			</tr>
			<tr>
				<th>현재 살고있는 지역</th>
				<td><select name="addr">
						<option value="서울">서울</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
						<option value="경기도">경기도</option>
						<option value="제주도">제주도</option>
				</select></td>
			</tr>
			<tr>
				<th>글자색</th>
				<td><input type="radio" value="black" name="fcolor" checked="checked">검정&nbsp;
					<input type="radio" value="blue" name="fcolor" checked="checked">파랑&nbsp; <input
					type="radio" value="red" name="fcolor" checked="checked">빨강&nbsp; <input
					type="radio" value="magenta" name="fcolor" checked="checked">분홍&nbsp;</td>
			</tr>
			<tr>
				<th>배경색</th>
				<td><input type="color" name="bcolor" value="#ffccff"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>
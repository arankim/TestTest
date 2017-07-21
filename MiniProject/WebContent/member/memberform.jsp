<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
#cl-dashboard {
	display: none;
}
</style>
</head>
<body>
<form action="#" method="post">
<table class="table table-bordered">
<tr>
<th width="100" bgcolor="#ffe4e1">회원명</th>
<td>
<input type="text" name="name" size="10" placeholder="이름입력" required="required" class="form-control" style="width: 130px;">
</td>
</tr>
<tr>
<th width="100" bgcolor="#ffe4e1">아이디</th>
<td>
<div class="form-inline">
<input type="text" name="id" size="10" placeholder="아이디" required="required" readonly="readonly"class="form-control">&nbsp;&nbsp;
<input type="button" class="btn btn-info btn-sm" value="아이디 입력"></div>
</td>
</tr>
<tr>
<th width="100" bgcolor="#ffe4e1">비밀번호</th>
<td>
<div class="form-inline">
<input type="password" name="password" size="10" placeholder="비밀번호" required="required" class="form-control">
&nbsp;&nbsp;<b>한번더</b>
<input type="password" name="password2" size="10" placeholder="비밀번호" required="required" class="form-control">
</div>
</td>
</tr>
<tr>
<th width="100" bgcolor="#ffe4e1">주   소</th>
<td>
<div class="form-inline">
<input type="text" name="address" size="50" placeholder="주소" readonly="readonly" class="form-control">
<input type="button" value="주소입력" class="btn btn-danger btn-sm" onclick="">
</div>
</td>
</tr>
<tr>
<th width="100" bgcolor="#ffe4e1">핸드폰</th>
<td>
<div class="form-inline">
<select name="hp1" class="form-control">
<%
String[] s = {"010","011","016","017","019","018"};
for(int i = 0; i<s.length; i++){
%>
<option value="<%=s[i] %>"><%=s[i] %></option>
<%
}
%>
</select>
<b>-</b>
<input type="text" class="form-control" style="width:70px;" id="hp2" name="hp2">
<b>-</b>
<input type="text" class="form-control" style="width:70px;" id="hp3" name="hp3">
</div>
</td>
</tr>
<tr>
<th width="100" bgcolor="#ffe4e1">이메일</th>
<td>
<div class="form-inline">
<input type="text" class="form-control" name="email1" style="width: 100px;" id="email1">
<b>@</b>
<input type="text" class="form-contorl" name="email2" id="email2" style="width: 130px;">
<select id = "selemail" class="form-control">
<option value="-">직접입력</option>
<option value="naver.com">네이버</option>
<option value="nate.com">네이트</option>
<option value="gmail.com">구글</option>
<option value="daum.net">다음</option>
</select>
</div>
</table>
</form>
</body>
</html>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "day0629.db.GuestDao,java.util.ArrayList,day0629.db.GuestDto" %>
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
tr, th, td {
	font-size: 10pt;
	border-bottom: 1px solid gray;
	border-right: 1px dotted green;
}

a:LINK {
	text-decoration: none;
	font-size: 10pt;
	color: black;
}

a:HOVER {
	text-decoration: underline;
	color: red;
}

</style>
<script type="text/javascript">
$(function(){
	$("#writeform").css("cursor","pointer");
	$("#guest").hide();
	
	$("#write").click(function(){
		$("#guest").slideToggle();
		
		$("#content").replace("\n", "<br>");
		
	});

});
</script>
</head>
<body>
<hr align="left" width="300" color="pink" size="3">
<b id="write" >방명록 쓰기</b>
<hr align="left" width="300" color="pink" size="3">
<div id="guest">
<form action="writeaction.jsp" method="post">
<input type="text" name="nickname" size="8" required="required" placeholder="닉네임">
<input type="password" name="pass" size="8" required="required" placeholder="비밀번호">
<input type="submit" value="저장">
<br><br>
<textarea rows="5" cols="40" name="content"></textarea>
</form>
</div>
<hr align="left" width="300" color="pink" size="3">
<b style="margin-left:100px;">방명록 목록</b>
<hr align="left" width="300" color="pink" size="3">
<%
GuestDao db = GuestDao.getInstance();
ArrayList<GuestDto> list = db.getAllGuest();
%>
총 <b style="color: red;"><%=list.size() %></b>개의 방명록이 등록되었습니다.
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
for(int i = 0; i<list.size(); i++){
	GuestDto dto = list.get(i);
%>
<table>
<tr>
<td width="230">
<b><%=list.size()-i %></b>&nbsp;&nbsp;
<b><%=dto.getNickname() %></b>
</td>
<td align="right" width="100">
<span style="font-size:9pt;color:gray;"><%=sdf.format(dto.getWriteday()) %></span>
</td>
<td width="60" align="center">
<a href="" style="font-size: 9pt;">수정</a>/
<a href="" style="font-size:9pt;">삭제</a>
</td>
</tr>
<tr height="230">
<td id="content" colspan="3" valign="middle">
<div style="white-space:pre-wrap; word-wrap:break-word;width: 250px;">
<%
dto.getContent().replaceAll("\n", "<br>");
%>
<%=dto.getContent() %></div></td></tr>
<%
}
%>
</table>
</body>
</html>
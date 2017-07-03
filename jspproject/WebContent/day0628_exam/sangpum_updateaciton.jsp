<%@page import="java.util.Formatter"%>
<%@page import="java.text.Format"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "day0628.db.homework.SangpumDao,day0628.db.homework.SangpumDto" %>
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
</style>
</head>
<body>
<%

request.setCharacterEncoding("UTF-8");
SangpumDao spd = new SangpumDao();

String sang = request.getParameter("sang");
Integer su = Integer.parseInt(request.getParameter("su"));
Integer dan = Integer.parseInt(request.getParameter("dan"));
Integer num = Integer.parseInt(request.getParameter("num"));

SangpumDto spdto =  new SangpumDto(sang,num,su,dan);
spd.getUpdateSangpum(spdto);

%>
<h4>해당 값이 수정되었습니다.</h4>
<a href="sangpumlist.jsp">목록 보기</a> / <a href="sangpum_updateform.jsp">수정 하기</a>
</body>
</html>
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
SangpumDao spd = new SangpumDao();
SangpumDto spdto = new SangpumDto();
request.setCharacterEncoding("UTF-8");

String sang = request.getParameter("sang");
Integer su = Integer.parseInt(request.getParameter("su"));
Integer dan = Integer.parseInt(request.getParameter("dan"));

spdto.setDan(dan);
spdto.setSu(su);
spdto.setSang(sang);

spd.insertSngpum(spdto);

%>
<h4>해당 값이 입력되었습니다.</h4>
<a href="sangpumlist.jsp">목록 보기</a> / <a href="sangpumform.jsp">입력 하기</a>
</body>
</html>
<%@page import="data.stu.Student"%>
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
<%
	request.setCharacterEncoding("UTF-8");
%>

<%-- <%
	Student stu=new Student();
	String name=request.getParameter("name");
	int kor=Integer.parseInt(request.getParameter("kor"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int mat=Integer.parseInt(request.getParameter("mat"));
	
	stu.setName(name);
	stu.setKor(kor);
	stu.setEng(eng);
	stu.setMat(mat);
%> --%>
<!-- 위 코드를 두줄로 줄이면 아래와 같음 -->
<jsp:useBean id="stu" class="data.stu.Student"></jsp:useBean>
<!-- stu의 멤버와 같은 이름은 자동으로 읽어서 주입한다. -->
<jsp:setProperty property="*" name="stu"/>

<h2>데이터 확인하기</h2>
이름 : <%=stu.getName() %><br>
국어 : <%=stu.getKor() %><br>
영어 : <%=stu.getEng() %><br>
수학 : <%=stu.getMat() %><br>
</body>
</html>
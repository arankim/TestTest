<<<<<<< HEAD
<%@page import="jspproject.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jspproject.Student" %>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
<<<<<<< HEAD
	#cl-dashboard{display:none;}
=======
#cl-dashboard {
	display: none;
}
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</style>
</head>
<body>
<%
<<<<<<< HEAD
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
<jsp:useBean id="stu" class="jspproject.Student"></jsp:useBean>
<!-- stu의 멤버와 같은 이름은 자동으로 읽어서 주입한다. -->
<jsp:setProperty property="*" name="stu"/>

<h2>데이터 확인하기</h2>
이름 : <%=stu.getName() %><br>
국어 : <%=stu.getKor() %><br>
영어 : <%=stu.getEng() %><br>
수학 : <%=stu.getMat() %><br>
=======
response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id ="stu" class="jspproject.Student" />
<!--  stu의 멤버와 같은 이름은 자동으로 읽어서 주입(setter)한다. -->
<jsp:setProperty property="*" name="stu"/>

<h2>데이타 확인하기</h2>
이름 : <%=stu.getName() %>
국어 : <%=stu.getKor() %>
영어 : <%=stu.getEng() %>
수학 : <%=stu.getMat() %>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</body>
</html>
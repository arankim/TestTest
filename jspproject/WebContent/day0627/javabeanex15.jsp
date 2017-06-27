<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jspproject.Student" %>
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
<h2>Bean클래스에 데이타 넣기 #1</h2>
<%
Student stu1 = new Student();
stu1.setName("홍길동");
stu1.setKor(78);
stu1.setEng(100);
stu1.setMat(90);
%>
<h2>학생 1에 대한 정보 출력</h2>
이름 : <%=stu1.getName() %><br>
국어 : <%=stu1.getKor() %><br>
영어 : <%=stu1.getEng() %><br>
수학 : <%=stu1.getMat() %>
<hr>
<h2>JavaBean을 이용하여 클래스에 데이터 넣기 #2</h2>
<jsp:useBean id="stu2" class=jspproject.Student" scope="page" />
<!-- scope : "page"가 기본값(생략가능), 이외에 request.session등이 있음(저장 위치를 뜻함) -->
<jsp:setProperty property="name" name="stu2" value="강호동" />
<jsp:setProperty property="kor" name="stu2" value="78" />
<jsp:setProperty property="eng" name="stu2" value="90" />
<jsp:setProperty property="mat" name="stu2" value="56" />
<h2>학생 2에 대한 정보 출력</h2>
이름 : <jsp:getProperty property="name" name="stu2"/><br>
국어 : <jsp:getProperty property="kor" name="stu2"/><br>
영어 : <jsp:getProperty property="eng" name="stu2"/><br>
수학: <jsp:getProperty property="mat" name="stu2"/><br>
</body>
</html>
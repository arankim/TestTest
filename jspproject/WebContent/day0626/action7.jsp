<%@page import="java.util.Set"%>
<%@page import="java.util.Enumeration, java.util.Map"%>
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
</style>
</head>
<body>
	<%
request.setCharacterEncoding("UTF-8");
String name= request.getParameter("name");
String gender = request.getParameter("gender");
String address = request.getParameter("addr");
String writeColor = request.getParameter("fcolor");
String bgColor = request.getParameter("bcolor");
%>
	<table>
		<td style="background-color:<%=bgColor%>;">
		이 름 : <%
			if (name == null) {
		%> 이름을 작성하지 않았습니다. <%
			} else {
		%> <%=name%> <%
 	}
 %> <br> 성 별 : <%
 	if (gender == null) {
 %> 성별을 선택하지 않았습니다. <%
 	} else {
 %> <%=gender%> <%
 	}
 %> <br> 주 소 : <%
 	if (address == null) {
 %> 주소를 선택하지 않았습니다. <%
 	} else {
 %> <%=address%> <%
 	}
 %> <br> 글자색 : <%
 	if (writeColor == null) {
 %> 글자색을 선택하지 않았습니다. <%
 	} else {
 %> <font color="<%=writeColor%>">테스트</font> <%
 	}
 %> <br> 배경색 : <%
 	if (bgColor == null) {
 %> 배경색을 선택하지 않았습니다. <%
 	} else {
 %> <%=bgColor%>색이 배경색으로 설정되었습니다. <%
 	}
 %> <br>
		</td>
	</table>
	<h3>getParameterNames : 폼태그들의 name들을 읽어온다.</h3>
	<%
		Enumeration enu = request.getParameterNames();
		while (enu.hasMoreElements()) {
			String names = enu.nextElement().toString();
			String value = request.getParameter(names);
	%>
	<%=names %>
	:
	<%=value%><br>
	<%
		}
	%>
	<hr>
	<h3>getParameterMap으로 데이타 읽기</h3>
	<%
		Map map = request.getParameterMap();
		Set<String> keys = map.keySet();
		for (String key : keys) {
			String[] re = (String[])map.get(key);
	%>
	<%=key%> => <%=re[0]%><br>
	<%
		}
	%>

</body>
</html>
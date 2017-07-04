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
		String lotto = (String) session.getAttribute("lotto");
		String nara = request.getParameter("nara");
		if (lotto == null) {
	%>
	<b style="font-size: 20pt; color: red;">꽝입니다.....시간이 초과되었어요</b>
	<%
		} else {
	%>
	<b style="font-size: 20pt; color: red;">세션값: <%=lotto%><br>
	 축하합니다 <%=nara%>상품에 당첨되었어요!!!
	</b>
	<%
		}
	%>

</body>
</html>
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
<script type="text/javascript">
$(function(){
	$("#hp2").keyup(function(){
		if($(this).val().length==4)
			$("#hp3").focus();
	});
	
	$("#email3").change(function(){
		var s=$(this).val();
		if(s=='-'){
			$("#email2").val("");
			$("#email2").focus();
		}else{
			$("#email2").val(s);
		}
	});
});

function check(){
	if(isNaN($("#hp2").val())){
		alert("숫자로만 입력해주세요");
		$("#hp2").val('');
		$("#hp2").focus();
		return false;
	}
	if(isNaN($("#hp3").val())){
		alert("숫자로만 입력해주세요");
		$("#hp3").val('');
		$("#hp3").focus();
		return false;
	}
}

</script>
</head>
<body>
<!-- onsubmit : 조건을 줘서 만족했을때에만 액션으로 넘어가도록 -->
<form action="action0627.jsp" method="post" onsubmit="return check();">
<b>핸드폰 : </b>
	<select name="hp1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="017">017</option>
		<option value="018">018</option>
		<option value="019">019</option>
	</select>
	<b>-</b>
	<input type="text" name="hp2" id="hp2" size="5" maxlength="4">
	<b>-</b>
	<input type="text"  name="hp3" id="hp3" size="5" maxlength="4" >
<br><br>
<b>이메일 : </b>
	<input type="text" name="email1" size="8">
	<b>@</b>
	<input type="text" name="email2" size="12" id="email2">
	<select id="email3">
		<option value="-">직접입력</option>
		<option value="naver.com">네이버</option>
		<option value="daum.net">다음</option>
		<option value="gmail.com">구글</option>
		<option value="nate.com">네이트</option>	
	</select>
<br><br>
	<input type="submit" value="전송">
</form>
</body>
</html>
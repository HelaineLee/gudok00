<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<script type="text/javascript" src ="js/login.js"></script>
<script>
	
		function pinNumCheck() {
			
			if($.trim($("#f_pinNum").val())==""){
		  		alert("본인확인 코드를 입력하세요");
		  		$("#f_pinNum").focus();
		  		return false;
		  	}
			
			if($.trim(('#f_pinNum').val()) == ${pinNum}){
				return true;
			}
			
			if($.trim(('#f_pinNum').val()) != ${pinNum}){
				alert("본인확인 코드가 일치하지 않습니다.");
		  		$("#f_pinNum").focus();
				return false;
			}
			
			};
			
			

</script>
</head>
<body>
	<div align="center">
	
		<form action="NewBPwd.do" method="post" onsubmit="return pinNumCheck()">
			<h3>등록된 이메일로 전송이 완료되었습니다. 본인 확인 코드를 입력해주세요</h3><br />
			<input type="text" id="f_pinNum"/>&nbsp; <input type="submit" value="확인" /> <!-- onclick="pinNumCheck()" -->
			
			
		</form>
	</div>
</body>
</html>
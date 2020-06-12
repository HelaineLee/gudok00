<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<script type ="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">
function pwdCheck(){ // 
	if($.trim($("#pwd1").val())==""){ // 비번1 입력창이 빈칸일 때
		  var warningTxt = '<font color="red" size="2px">비밀번호를 입력해주세요.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
       return false; 
       
	  }else if($.trim($("#pwd1").val()).length <8){//비밀번호 8자 이하
      var warningTxt = '<font color="red" size="2px">비밀번호는 8자 이상이어야 합니다.</font>';
      $("#pwdCheck").text('');   //   idcheck 영역 초기화
      $("#pwdCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
      $("#pwdCheck").append(warningTxt);
      return false; 
      
   }else if($.trim($("#pwd1").val()).length > 16){ //비밀번호 16자 초과
       var warningTxt = '<font color="red" size="2px">비밀번호는 16자 이하여야 합니다.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
       return false; 
       
   }else if($.trim($("#pwd1").val())==$.trim($("#pwd2").val())){
		 var warningTxt = '<font color="green" size="2px">비밀번호가 일치합니다.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
		 return true; 
	}else if($.trim($("#pwd1").val())!==$.trim($("#pwd2").val())){
		 var warningTxt = '<font color="red" size="2px">비밀번호가 일치하지 않습니다.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
		 return false; 
		}
};//비밀번호 확인 메서드 끝

</script>
</head>
<body>
	<div align="center" class="content">
	<%@ include file="../include/header.jsp" %>
		<form method ="post" action="SetNewSPwd.do" onsubmit="return pwdCheck()">
			<br />
			<h2>${s_id }님, 새로운 비밀번호를 입력하세요</h2>
			비밀번호<br />
			<input type="password" name="spwd" id="pwd1" onkeyup="pwdCheck()"/><br /><br />
			비밀번호 확인<br />
			<input type="password" id="pwd2" onkeyup="pwdCheck()" /><br />
			<span id="pwdCheck"></span><br>
			<input type="submit" value="새로운 비밀번호 설정완료!"/>
		</form>
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
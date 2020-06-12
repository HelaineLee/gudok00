<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<script type="text/javascript" src ="js/login.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#vl {

  border-left: 1px solid #D8D8D8;
  height: 350px;
  margin-top: 150px;

}
</style>
</head>

<body>
	<div align="center">
		<br /><br /><br />
		<a href="main.do"><img alt="logo" src="images/MGlogo.png"></a>
		<br />
	</div>
	
	<div class="row">
	  <div class="col-md-3"></div>
	  <div class="col-md-2">
	  
	  
	<br /><br /><br /><br /><br />
	
			<h3 class="text-center text-success">구독자 로그인</h3>
	<hr width="100%" color="#CEF279"/>
	
	  <form method="post" action="<%=request.getContextPath()%>/Slogin.do" onsubmit="return Slogin_check()">
		<div class="form-group">
		    <label for="s_id"  class="text-left" >아이디</label>
		    <input type="text" class="form-control" id="s_id" name="s_id" placeholder="아이디를 입력하세요">
  		
		    <label for="spwd" class="text-left" >비밀번호</label>
		    <input type="password" class="form-control" id="spwd" name="spwd" placeholder="비밀번호를 입력하세요">
		    <br />
		    <input type="submit" value="로그인" class="btn btn-primary btn-block"/><br />
		    <input type="button" value="구독자회원가입" class="btn btn-default btn-block" onclick="location.href='smember_join.do'"/>
			<input type="button" value="아이디/비번찾기" class="btn btn-default btn-block" onclick="location.href='s_find.do'"/>					
			
  		</div>
		</form>
	
	<br />
	
	  </div>
	  <div class="col-md-2"></div>
	  
	  <div class="col-md-2">
	<br /><br /><br /><br /><br />
	
			<h3 class="text-center text-success">사업자 로그인</h3>
	<hr width="100%" color="#CEF279"/>
		<form method="post" action="<%=request.getContextPath()%>/Blogin.do" onsubmit="return Blogin_check()">
		<div class="form-group">
		    <label for="b_id"  class="text-left" >아이디</label>
		    <input type="text" class="form-control" id="b_id" name="b_id" placeholder="아이디를 입력하세요">
  		
		    <label for="bpwd" class="text-left" >비밀번호</label>
		    <input type="password" class="form-control" id="bpwd" name="bpwd" placeholder="비밀번호를 입력하세요">
		    <br />
		    <input type="submit" value="로그인" class="btn btn-primary btn-block"/><br />
		    <input type="button" value="사업자회원가입" class="btn btn-default btn-block" onclick="location.href='bmember_join.do'"/>
			<input type="button" value="아이디/비번찾기" class="btn btn-default btn-block" onclick="location.href='b_find.do'"/>					
			
  		</div>
		</form>
		<br /><br /><br />
	  </div>
	  
	  <div class="col-md-3"></div>
  </div>
  <%@ include file="../include/footer.jsp" %>
</body>
</html>
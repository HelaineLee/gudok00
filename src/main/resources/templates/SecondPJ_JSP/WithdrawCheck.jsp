<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div align="center"  class="content">
	<%@ include file="../include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="../include/mypageSidebar.jsp" %>
	</div>
	 <div class="col-md-10">
		<hr width="30%" color="green">
		<h3>정말로 탈퇴하시겠습니까?</h3>
		<hr width="30%" color="green">
		
		<input type="button" value="탈퇴하기" name="withdraw" onclick="location.href='<%=request.getContextPath()%>/withdraw_Check_Ok.do'">
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>
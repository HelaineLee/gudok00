<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		font-family: 나눔스퀘어라운드;
	}
	
	p{
		font-size: 17px;
	}
	
	#bt {
		font-size: 15px;
	}	
	
</style>
</head>
<body>
	<div align = "center">
	<%@ include file="include/header.jsp" %>
		<br />
		<h2>판매자님의 가입을 환영합니다.</h2>		
		<hr width="20%"/>
		<br />
		<p>회원가입이 완료되었습니다.</p>
		<p>지금부터 월간 여유를 통해 구독자들의 일상 속에 여유를 배송하고</p>
		<p>당신의 상품을 세상에 널리 알리세요.</p>
		<br />
		<hr width="20%"/>
		<br />
		<form method="post" action="<%=request.getContextPath()%>/Blogin.do">	
		<p>수많은 구독자님들이 기다리는 월간 구독&nbsp;<input type="submit" value="로그인하기" id="bt"/></p>
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="b_id" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="bpwd" /></td>
			</tr>
		</table>
		</form>	
		<hr width="70%" color="#E4F7BA"/>
		<br /><br />
	</div>
</body>
</html>
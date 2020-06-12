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
<style type="text/css">
	body{
		font-family: '나눔고딕';
	}
	button {
		font-family: '나눔고딕';
		font-size: 20px;
		padding: 15px;
	}
</style>
</head>
<body>
	<div align="center" class="content">
	<br /><br />
		<a href="main.do"><img alt="logo" src="images/MGlogo.png"></a>
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
		<table width="700">
			<tr>
				<td width="200">
				<button onclick="location.href='smember_join.do'">구독자 가입하기</button>
				</td>
				<td>
					<p>구독자로 가입하여</p>
					<p>다양한 상품을 정기적으로 배송받아 보세요!</p>
				</td>
			</tr>		
		</table>
		<hr width="700" color="#CEF279"/>
		<table width="700">
			<tr>
				<td width="200">
				<button onclick="location.href='bmember_join.do'">판매자 가입하기</button>
				</td>
				<td>
					<p>판매자로 가입하여</p>
					<p>당신의 상품을 세상에 보여주세요!</p>
				</td>
			</tr>		
		</table>	
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
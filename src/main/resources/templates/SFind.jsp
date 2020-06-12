<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<script type="text/javascript" src ="js/loin.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	h4, td{
		font-family: "나눔스퀘어라운드";
	}
	
	h4{
		background: repeating-linear-gradient(-45deg, #E4F7BA, #FFF 10px);
		width: 200px;
		padding: 10px;
		border-radius: 5px;
	}
	td {
		font-size: 15px;
		text-align: center;
		padding: 5px;
	}
	
	.bt {
		background-color: #E4F7BA;
		border: none;
		padding: 10px;
		font-family: "나눔스퀘어라운드";		
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		border-radius: 5px;
		
	}
	
	.box {
		height: 35px;
		border: none;
		border-bottom: 2px solid #E4F7BA;
		width: 300px;		
	}
</style>
</head>
<body>
	<div align="center" class="content">
	<%@ include file="include/header.jsp" %>
	<br /><br />
		<form method="post" action="Sid_find.do" onsubmit="id_find_check()">
			<h4>구독자 아이디 찾기</h4>
			<br />
			<table> 
				<tr>
					<td>이름 </td>
					<td> <input type="text" name="f_name" id="f_name" class="box"/></td>
					<td rowspan="2">&nbsp;&nbsp;<input type="submit" value="아이디 찾기" class="bt"/></td>
				</tr>
				<tr>
					<td>이메일 </td>
					<td> <input type="email" name="f_mail" id="f_mail" class="box"/></td>
				</tr>
			</table>
		</form>
		<br />
		<hr width="70%" color="#CEF279"/>
		<br />
		<form method="post" action="Spwd_find.do" onsubmit="pwd_find_check()">
			<h4>구독자 비밀번호 찾기</h4>
			<br />
			<table> 
				<tr>
					<td>아이디</td>
					<td> <input type="text" name="f_id" id="f_id" class="box"/></td>
					<td rowspan="2">&nbsp;&nbsp;<input type="submit" value="비밀번호 찾기" class="bt"/></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td> <input type="email" name="f_mail" id="f_mail" class="box"/></td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	h3, td, th{
		font-family: "나눔스퀘어라운드";
	}
	
	h4{
		background: repeating-linear-gradient(-45deg, #E4F7BA, #FFF 10px);
		width: 150px;
		padding: 10px;
		border-radius: 5px;
	}
	td, th {
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
	<div class="content">
	<% 
		Integer cnum = (Integer)session.getAttribute("cnum");
		session.setAttribute("cnum", cnum);		
	%>
		<c:if test="${cnum eq '1'}" >	
			
		<div align="center">
		<%@ include file="include/header.jsp" %>
		<br /><br />			
		<hr width="40%" color="#CEF279"/>
		<h3>본인 확인을 위해 다시 한 번 로그인 해주세요.</h3>
		<hr width="40%" color="#CEF279"/>
		<br /><br />
		<form method="post" action="<%=request.getContextPath()%>/SSecurelogin.do" onsubmit="return Slogin_check()" >
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="s_id" value="${s_id }" readonly/>
				<td rowspan="2">
					<input type="submit" value="로그인" class="bt" />
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="spwd" />
			</tr>
		</table>
		</form>
		</div>
			
		</c:if>
		<c:if test="${cnum eq '2' }">
		<div align="center">
		<%@ include file="include/header.jsp" %>
		<br /><br />			
		<hr width="40%" color="#CEF279"/>
		<h3>본인 확인을 위해 다시 한 번 로그인 해주세요.</h3>
		<hr width="40%" color="#CEF279"/>
		<br /><br />		
		<form method="post" action="<%=request.getContextPath()%>/BSecurelogin.do" onsubmit="return Blogin_check()">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="b_id" value="${b_id }" readonly/>
				<td rowspan="2">
					<input type="submit" value="로그인"  class="bt"  />
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="bpwd" />
			</tr>			
		</table>
		</form>
	</div>
		</c:if>
</div>
<%@ include file="include/footer.jsp" %>

</body>
</html>
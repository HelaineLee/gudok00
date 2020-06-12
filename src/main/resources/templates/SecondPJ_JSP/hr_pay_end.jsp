<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String sid = (String)request.getAttribute("sid");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="../css/bootstrap_3-3-2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<style type="text/css">
	body{
		font-family: 나눔스퀘어라운드;
	}
</style>
</head>
<body>
	<div align="center">
	<%@ include file="../include/header.jsp" %>
    <%@ include file="../include/mypageSidebar.jsp" %>
    
		<hr width="50%" color="#CEF279" />
		<h3>구독 완료</h3>
		<hr width="50%" color="#E4F7BA" />
		<br />
		<h1>구독해주셔서 감사합니다!!!</h1>
		<br /> <br /> <button onclick="location.href='<%=request.getContextPath()%>/recsub_list.do?sid=<%=sid%>'">구독목록으로 이동</button>
		<br />
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<div align="center" class="content">
	<h3>구독자 회원 목록</h3>
	<%@ include file="../include/header.jsp" %>
	
		<table width="600">
			<tr>
				<th>아이디</th> <th>이름</th> <th>가입일자</th>
			</tr>
		<c:set var="list" value="${Smember }" />
		<c:if test="${!empty list }">
		<c:forEach items="${list }" var="dto">
			<tr align="center">
				<td>${dto.getS_id() }</td>
				<td>${dto.getSname() }</td>
				<td>${dto.getSjoindate() }</td>						
			</tr>
		</c:forEach>
		</c:if>
		<c:if test="${empty list }">
			<tr>
				<td colspan="2" align="center">
					<h4>가입한 회원이 없거나 일시적 오류로 불러올 수 없습니다.</h4>
				</td>
			</tr>
		</c:if>
		</table>
		<br />
		<input type="button" onclick="location.href='smember_join.do'" value="구독자 회원 가입"/>
	
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
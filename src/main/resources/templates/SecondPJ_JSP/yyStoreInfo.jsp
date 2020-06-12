<%@page import="com.gudok.model.B_memberDTO"%>
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
</head>
<body>
	<div align="center" class="content">
	<%@ include file="../include/header.jsp" %>
	<c:set var="Store" value="${Store }"/>
	<h1>${dto.getBname() }</h1>
	<p>상점소개</p>
	<p>${Store.getBstory() }</p>
	<hr width="50%"/>
	<p>${Store.getBname() }의 상품</p>
	<table>
	<c:set var="products" value="${Products }"/>		
		<tr>
			<c:forEach items="${Products }" var="dto">
			<c:if test="${dto.getPdelete() != 0 }">		
			<td align="center">
				<a href="pCont.do?no=${dto.getP_id() }"><img src="./images/${dto.getPimage() }" width="80"></a>
				<br />${dto.getPname() }			
			</td>		
			</c:if>
			</c:forEach>
		</tr>		
	</table>
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
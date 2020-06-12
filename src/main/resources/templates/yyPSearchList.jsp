<%@page import="java.util.List"%>
<%@page import="com.gudok.model.ProductsDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% List<ProductsDTO> list = (List<ProductsDTO>)request.getAttribute("searchList"); %>
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
	<%@ include file="include/header.jsp" %>
	<c:set var="searchList" value="${searchList }"/>
	<c:if test="${!empty searchList }">
		<p>'${find_name }'검색결과</p>					
		<table cellspacing="20px">
		<c:forEach items="${searchList }" var="dto">	
		<tr align="center">		
		  <td>		  	
			<a href="pCont.do?no=${dto.getP_id() }"><img src="./images/${dto.getPimage() }" width="80"></a>
		  </td>
		  <td width="500" align="left">
		  	<a href="pCont.do?no=${dto.getP_id() }">${dto.getPname() }<br />${dto.getPrice() }원</a><br />
		  	<a href="#">장바구니 추가</a>		  	
		  </td>	
		  <td>
		  	<a href="storePage.do?no=${dto.getB_id() }">${dto.getBname() }</a>
		  </td>
		</tr>
		</c:forEach>				
		</table>
		</c:if>
		<c:if test="${empty searchList }">	
		<p>검색 결과가 없습니다.</p>
		</c:if>
	</div>
	<%@ include file="include/footer.jsp" %>	
</body>
</html>
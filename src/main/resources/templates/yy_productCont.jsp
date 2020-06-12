<%@page import="com.gudok.model.ProductsDTO"%>
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
	<div align="center"  class="content">
	<%@ include file="include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	 <div class="col-md-10">
	<form method="post" enctype="multipart/form-data" action="productContUpdate.do">
	<c:set value="${Cont }" var="dto"/>		
	<table>	
		<tr>
			<td colspan="2"  align="center">
			<img src="./images/${dto.getPimage() }"/>
			<input type="hidden" value="${dto.getP_id() }" name="p_id" />
			<input type="hidden" value="${dto.getPimage() }" name="pimage" />
			</td>
		</tr>
		<tr>
			<th>대표 사진 수정</th>
			<td>
			<input type="file" name="file1" />			
			</td>
		</tr>		
		<tr>
			<th>콘텐츠 사진1 수정</th>
			<td>
			<input type="file" name="file2" />			
			</td>
		</tr>
		<tr>
			<th>콘텐츠 사진2 수정</th>
			<td>
			<input type="file" name="file3" />			
			</td>
		</tr>
		<tr>
			<th>콘텐츠 사진3 수정</th>
			<td>
			<input type="file" name="file4" />			
			</td>
		</tr>
		<tr>
		  <th>상품명</th>
		  <td><input type="text" name="pname" value="${dto.getPname() }"/></td>
		</tr>
		<tr>
		  <th>가격</th>
		  <td><input type="text" name="price" value="${dto.getPrice() }" />원</td>
		</tr>
		<tr>
		  <th>상품 소개</th>
		  <td><textarea name="pstory" cols="30" rows="10">${dto.getPstory() }</textarea></td>		  
		</tr>
		<tr>
		  <th>품절 여부</th>
		  <td>		  			  	
		  	<label><input type="radio" name="psoldout" value="1" <c:if test="${dto.getPsoldout()==1}">checked</c:if>/>재고있음</label>
		  	<label><input type="radio" name="psoldout" value="0" <c:if test="${dto.getPsoldout()==0}">checked</c:if>/>품절</label>
		  </td>
		</tr>	
	</table>
		<button onclick="<%=request.getContextPath() %>/productContUpdate.do">변경 내용 저장</button>
		<button onclick="<%=request.getContextPath() %>/productList.do">취소</button>		
	</form>
		</div>
		 
	</div>
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>
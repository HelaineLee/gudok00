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
	<%@ include file="include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	 <div class="col-md-10">
	<form method="post" enctype="multipart/form-data" action="productAddOk.do">
	<input type="hidden" value="${dto.getP_id() }" name="p_id" />
	<input type="hidden" value="${dto.getPimage() }" name="pimage" />	
	<table>		
		<tr>
			<th>대표 사진</th>
			<td>
			<input type="file" name="file1" />			
			</td>
		</tr>
		<tr>
			<th>이미지1</th>
			<td>
			<input type="file" name="file2" />			
			</td>
		</tr>
		<tr>
			<th>이미지2</th>
			<td>
			<input type="file" name="file3" />			
			</td>
		</tr>
		<tr>
			<th>이미지3</th>
			<td>
			<input type="file" name="file4" />			
			</td>
		</tr>
		<tr>
		  <th>상품명</th>
		  <td><input type="text" name="pname"/></td>
		</tr>
		<tr>
		  <th>카테고리</th>
		  <td>
		  	<select name="cnum">
		  		<option value="">::선택::</option>
		  		<option value="10">모바일</option>
		  		<option value="11">식물</option>
		  		<option value="12">생활필수품</option>
		  		<option value="13">피부 및 건강</option>
		  		<option value="14">아이웨어</option>		  		
		  	</select>
		  </td>
		</tr>
		<tr>
		  <th>가격</th>
		  <td><input type="text" name="price"/>원</td>
		</tr>
		<tr>
		  <th>상품 소개</th>
		  <td><textarea name="pstory" cols="30" rows="10"></textarea></td>		  
		</tr>		
	</table>
		<input type="submit" value="저장"/>
		<button onclick="history.back()">취소</button>
	</form>
	</div>
	
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
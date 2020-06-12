<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
		<form action="LookupSubers.do" method="post" class="form-inline">
		<br />
			<h3>${bname}님 구독자 조회</h3>
<br />
			<select name="pname" class="form-control">
				<c:set var="list" value="${list }" />
				<c:if test="${empty list }">
					<option value="0">제품없음</option>
				</c:if>
				<c:if test="${!empty list }">
					<option value="${sPname}">${sPname}</option>

					<c:forEach items="${list }" var="dto">
						<c:if test="${dto.getPname() != sPname }">
							<option value="${dto.getPname()}">${dto.getPname()}</option>
						</c:if>
					</c:forEach>
					<c:if test="${sPname != '전체제품'}">
						<option value="전체제품">전체제품</option>
					</c:if>
				</c:if>
			</select> <select name="type"  class="form-control">
				<c:if test="${stype =='전체'}">
					<option value="${stype}">구독권 ${stype}</option>
					<option value="1">1개월</option>
					<option value="3">3개월</option>
					<option value="6">6개월</option>
					<option value="12">12개월</option>
				</c:if>
				<c:if test="${stype == '1'}">
					<option value="${stype}">${stype}개월</option>
					<option value="3">3개월</option>
					<option value="6">6개월</option>
					<option value="12">12개월</option>
					<option value="전체">구독권 전체</option>
				</c:if>
				<c:if test="${stype == '3'}">
					<option value="${stype}">${stype}개월</option>
					<option value="1">1개월</option>
					<option value="6">6개월</option>
					<option value="12">12개월</option>
					<option value="전체">구독권 전체</option>
				</c:if>
				<c:if test="${stype == '6'}">
					<option value="${stype}">${stype}개월</option>
					<option value="1">1개월</option>
					<option value="3">3개월</option>
					<option value="12">12개월</option>
					<option value="전체">구독권 전체</option>
				</c:if>
				<c:if test="${stype == '12'}">
					<option value="${stype}">${stype}개월</option>
					<option value="1">1개월</option>
					<option value="3">3개월</option>
					<option value="6">6개월</option>
					<option value="전체">구독권 전체</option>
				</c:if>


			</select> <input type="submit" value="조회" class="btn btn-success"/>
		</form>
		
	<br /><br />
	

	<div align="center">
		<table border="1" width="1500px" class="table-bordered table-hover ">
			<tr class="bg-success">
				<th>아이디</th>
				<th>이름</th>
				<th>구독 제품</th>
				<th>구독수량</th>
				<th>구독권</th>
				<th>구독 만료일</th>
				<th>연락처</th>
				<th>주소</th>
				<th>이메일</th>
				<th>생일</th>
			</tr>
			<c:set var="slist" value="${suberlist }" />
			<c:if test="${empty slist }">
				<tr>
					<td colspan="10" align="center">현재 구독자가 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty slist }">
				<c:forEach items="${slist }" var="sdto">
					<tr>
						<td>${sdto.getS_id()}</td>
						<td>${sdto.getSname()}</td>
						<td>${sdto.getPname()}</td>
						<td>${sdto.getQuantity()}</td>
						<td>${sdto.getSubmonth()}개월</td>
						<td>${sdto.getEndday()}</td>
						<td>${sdto.getSphone()}</td>
						<td>${sdto.getSadd()}</td>
						<td>${sdto.getSemail()}</td>
						<td>${sdto.getSbday()}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		</div>
	</div>
	
	 
	
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
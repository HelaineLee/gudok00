<%@page import="com.gudok.model.MSalesDTO"%>
<%@page import="com.gudok.model.ProductsDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
  String bname = (String)request.getAttribute("bname");	
HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("map");

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	<form action="MSales.do" method="post" class="form-inline">
	<h2><span id ="bname"><%=bname %></span>님 월간매출</h2>
	<c:set var="year" value="${year }"/>
	<c:set var="mon" value="${month }"/>
	<select name="year" id="year" class="form-control">
		<option value="${year }" selected hidden >20${year }년</option>
		<option value="19">2019년</option>
		<option value="20">2020년</option>
	</select>
	
	<select name="month" id="month" class="form-control">
		<option value="${mon }" selected hidden >${mon }월</option>
		<option value="01">1월</option>
		<option value="02">2월</option>
		<option value="03">3월</option>
		<option value="04">4월</option>
		<option value="05">5월</option>
		<option value="06">6월</option>
		<option value="07">7월</option>
		<option value="08">8월</option>
		<option value="09">9월</option>
		<option value="10">10월</option>
		<option value="11">11월</option>
		<option value="12">12월</option>
	</select>
	
	<select name="pname" id="pname" class="form-control">
		<c:set var="list" value="${list }"/>
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
	</select>
	
	<input type="submit" value="조회" class="btn btn-info"/>
	</form>
	<br />

</div>

<div align="center">
		<table width="1300px"  class="table-bordered table-hover">
		<tr class="bg-info">
			<th rowspan="2">제품명</th>
			<th rowspan="2">신규 <br />구독자</th>
			<th rowspan="2">만료자</th>
			<th rowspan="2">해지자</th>
			<th colspan="4">구독권별 주문량</th>
			<th colspan="4">해지개월 수</th>
			<th rowspan="2">출고 <br />제품</th>
			<th rowspan="2">해지<br />제품</th>
			<th rowspan="2">매출</th>
			<th rowspan="2">환불<br /> 가격</th>
			<th rowspan="2">총 매출액</th>
		</tr>
		<tr class="bg-info">
			<th>1개월</th>
			<th>3개월</th>
			<th>6개월</th>
			<th>12개월</th>
			<th>1개월</th>
			<th>3개월</th>
			<th>6개월</th>
			<th>12개월</th>
		</tr>
		
		<c:set var="mslist" value="${mslist }"/>
		<c:if test="${empty mslist }"> 
			<tr>
			<td colspan="17" align="center">조회 버튼을 눌러주세요</td>
			</tr>
		</c:if>
		<c:if test="${!empty mslist }"> 
			<c:forEach items="${mslist }" var="msdto">
				<tr id="1">
					<td>${msdto.getPname()}</td>
					<td>${msdto.getNewsuber()}</td>
					<td>${msdto.getExpsuber()}</td>
					<td>${msdto.getCansuber()}</td>
					<td>${msdto.getSmon1()}</td>
					<td>${msdto.getSmon3()}</td>
					<td>${msdto.getSmon6()}</td>
					<td>${msdto.getSmon12()}</td>
					<td>${msdto.getCmon1()}</td>
					<td>${msdto.getCmon3()}</td>
					<td>${msdto.getCmon6()}</td>
					<td>${msdto.getCmon12()}</td>
					<td>${msdto.getOrdernum()}</td>
					<td>${msdto.getCancelnum()}</td>
					<td>${msdto.getOrderprice()}</td>
					<td>${msdto.getCancelprice()}</td>
					<td>${msdto.getTot_price()}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="18" align="center">---</td>
			</tr>
			<tr>
			<td>합 계</td>
			<td><%=map.get("ts")%></td>
			<td><%=map.get("te")%></td>
			<td><%=map.get("tc")%></td>
			<td><%=map.get("ts1")%></td>
			<td><%=map.get("ts3")%></td>
			<td><%=map.get("ts6")%></td>
			<td><%=map.get("ts12")%></td>
			<td><%=map.get("tc1")%></td>
			<td><%=map.get("tc3")%></td>
			<td><%=map.get("tc6")%></td>
			<td><%=map.get("tc12")%></td>
			<td><%=map.get("tmp")%></td> 
			<td><%=map.get("tcp")%></td>
			<td><%=map.get("toprice")%></td>
			<td><%=map.get("trfp")%></td>
			<td><%=map.get("tmm")%></td>
			
			</tr>
		</c:if>
	</table>
	
</div>

	 
	
</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>
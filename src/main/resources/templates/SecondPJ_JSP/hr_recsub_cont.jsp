<%@page import="com.gudok.model.ReviewDTO"%>
<%@page import="com.gudok.model.Subscribe_recordDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.gudok.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Subscribe_recordDTO dto = (Subscribe_recordDTO) request.getAttribute("recCont");
	ReviewDTO rev = (ReviewDTO) request.getAttribute("review");
	String sid = (String)request.getAttribute("sid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.text4 {
	border: 0;
	width: 20px;
	text-align: center;
}
</style>
</head>
<body>
	<div align="center"  class="content">
	<%@ include file="../include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="../include/mypageSidebar.jsp" %>
	</div>
	 <div class="col-md-10">
		<hr width="80%" color="#CEF279" />
		<h3>구독 상세 내역</h3>
		<hr width="80%" color="#E4F7BA" />
		<br /> <br />
		<table width="900">
			<tr>
				<th>구독번호</th>
				<td align="center"><%=dto.getSubnum()%></td>
			</tr>
			<tr>
				<th>상점</th>
				<td align="center"><%=dto.getBname()%></td>
			</tr>
			<tr>
				<th>제품명</th>
				<td align="center"><%=dto.getPname()%></td>
			</tr>
			<tr>
				<th>구독 시작일</th>
				<td align="center"><%=dto.getSubday().substring(0, 10)%></td>
			</tr>
			<tr>
				<th>구독 만료일</th>
				<td align="center"><%=dto.getEndday().substring(0, 10)%></td>
			</tr>
			<tr>
				<th>배송지 정보</th>
				<td align="center"><%=dto.getSadd()%></td>
			</tr>
			<tr>
				<th>가격</th>
				<td align="center"><%=dto.getPrice()%> 원</td>
			</tr>
			<tr>
				<th>구독 개월 수</th>
				<td align="center"><%=dto.getSubmonth()%> 개월</td>
			</tr>
			<tr>
				<th>구독 수량</th>
				<td align="center"><%=dto.getCquantity()%> 개</td>
			</tr>
		</table>
		<br /> <br /> <input type="button" value="구독 취소"
			onclick="location.href='rec_change.do?subnum=<%=dto.getSubnum()%>&sid=<%=sid%>'">
		<%
			if (dto.getSubnum() != rev.getPayNum()) {
		%>
		<input type="button" value="리뷰 남기기"
			onclick="location.href='rev_write.do?subnum=<%=dto.getSubnum()%>&sid=<%=sid%>'">
		<%
			}
		%>
		<input type="button" value="구독 목록"
			onclick="location.href='recsub_list.do?sid=<%=sid%>'">
		<br /> <br />
		
		</div>	 
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
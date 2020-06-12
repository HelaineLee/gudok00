<%@page import="com.gudok.model.ReviewDTO"%>
<%@page import="com.gudok.model.Subscribe_recordDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.gudok.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Subscribe_recordDTO dto = (Subscribe_recordDTO) request.getAttribute("recCont");
	ReviewDTO rev = (ReviewDTO) request.getAttribute("review");
	String sid = (String) request.getAttribute("sid");
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
</head>
<body>
	<div align="center">
	<%@ include file="../include/header.jsp" %>
    <%@ include file="../include/mypageSidebar.jsp" %>
		<hr width="80%" color="#CEF279" />
		<h3>취소 상세 내역</h3>
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
				<th>구독 취소일</th>
				<td align="center"><%=dto.getCday().substring(0, 10)%></td>
			</tr>
			<tr>
				<th>가격</th>
				<td align="center"><%=dto.getPrice()%> 원</td>
			</tr>
			<tr>
				<th>취소 개월 수</th>
				<td align="center"><%=dto.getCmonth()%> 개월</td>
			</tr>
			<tr>
				<th>취소 수량</th>
				<td align="center"><%=dto.getQuantity()%> 개</td>
			</tr>
			<tr>
				<th>환불 정보</th>
				<td align="center"><%=dto.getCmonth() * dto.getPrice() * dto.getQuantity()%>
					원</td>
			</tr>
		</table>
		<br /> <br /> <input type="button" value="재구독하기"
			onclick="location.href='rec_resub.do?subnum=<%=dto.getSubnum()%>&sid=<%=sid%>'">
		<%
			if (dto.getSubnum() != rev.getPayNum()) {
		%>
		<input type="button" value="리뷰 남기기"
			onclick="location.href='rev_write.do?subnum=<%=dto.getSubnum()%>&sid=<%=sid%>'">
		<%
			}
		%>
		<input type="button" value="해지 목록"
			onclick="location.href='reccan_list.do?sid=<%=sid%>'"> <br />
		<br />
		<hr width="80%" color="#E4F7BA" />
	</div>
</body>
</html>
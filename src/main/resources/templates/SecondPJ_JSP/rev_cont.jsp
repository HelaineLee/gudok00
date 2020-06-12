<%@page import="com.gudok.model.ReviewDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ReviewDTO dto = (ReviewDTO) request.getAttribute("qnaCont");
	int nowPage = (int) request.getAttribute("page");
	int cnum = (int) request.getAttribute("cnum");
%>
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
	<div align="center">
	<%@ include file="../include/header.jsp" %>
	<div class="col-md-2">
	<%@ include file="../include/mypageSidebar.jsp" %>
	</div>	
	 <div class="col-md-10">
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getsId()%>님의 사용 후기
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<h3><%=dto.getrTitle()%></h3>
		<br />
		<table width="800">
			<tr>
				<th>상점</th>
				<th>제품</th>
				<th>별점</th>
				<th>구독기간</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td align="center"><%=dto.getbName()%></td>
				<td align="center"><%=dto.getpName()%></td>
				<%
					if (dto.getScore() == 5) {
				%>
				<td align="center">★★★★★</td>
				<%
					} else if (dto.getScore() == 4) {
				%>
				<td align="center">★★★★</td>
				<%
					} else if (dto.getScore() == 3) {
				%>
				<td align="center">★★★</td>
				<%
					} else if (dto.getScore() == 2) {
				%>
				<td align="center">★★</td>
				<%
					} else {
				%>
				<td align="center">★</td>
				<%
					}
				%>
				<td align="center"><%=dto.getSubMonth()%>개월</td>
				<td align="center"><%=dto.getHit()%></td>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<td align="right">작성일자 : <%=dto.getrDate()%></td>
			</tr>
			<tr>
				<td><textarea rows="15" cols="80" readonly><%=dto.getUserCmt()%></textarea>
				</td>
			</tr>
			<%
				if (dto.getReFile() != null) {
			%>
			<tr>
				<td><img alt="<%=dto.getReFile()%>"
					src="./review/<%=dto.getReFile()%>"></td>
			</tr>
			<%
				}
			%>
		</table>
		<br /> 
		<%if(cnum==1) {%>
		<input type="button" value="삭제"
			onclick="location.href='rev_delete.do?no=<%=dto.getRevNum()%>&page=<%=nowPage%>'">
		<%}else if(cnum==2) { 
			if (dto.getDelReq() == null) {
		%>
		<input type="button" value="삭제요청"
			onclick="location.href='rev_req.do?no=<%=dto.getRevNum()%>&page=<%=nowPage%>'">
		<%} else {%>
		<input type="button" value="삭제반려"
			onclick="location.href='rev_refuse.do?no=<%=dto.getRevNum()%>&page=<%=nowPage%>'">
	<% 		}
		}	%>
		<input type="button" value="목록"
			onclick="location.href='rev_list.do?page=<%=nowPage%>'"> <br />
		<br />
		
		<br /> <br />
		<hr width="65%" color="#E4F7BA" />
		</div>
	</div>
</body>
</html>
<%@page import="com.gudok.model.Subscribe_recordDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.gudok.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Subscribe_recordDTO> list = (List<Subscribe_recordDTO>) request.getAttribute("recList");
	String sid = (String) request.getAttribute("sid");
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
	<div align="center"  class="content">
	<%@ include file="include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	 <div class="col-md-10">
		<hr width="80%" color="#CEF279" />
		<h3>현재 구독중인 제품</h3>
		<hr width="80%" color="#E4F7BA" />
		<br /> <br />
		<table width="900">
			<tr align="center">
				<th>구독번호</th>
				<th>상점</th>
				<th>제품명</th>
				<th>구독 시작일</th>
				<th>구독 만료일</th>
				<th>구독 개월 수</th>
				<th>구독 수량</th>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					Subscribe_recordDTO dto = list.get(i);
			%>
			<tr align="center">
				<td><a
					href="<%=request.getContextPath()%>/recsub_cont.do?subnum=<%=dto.getSubnum()%>&sid=<%=sid%>"><%=dto.getSubnum()%></a></td>
				<td><%=dto.getBname()%></td>
				<td><%=dto.getPname()%></td>
				<td><%=dto.getSubday().substring(0, 10)%></td>
				<td><%=dto.getEndday().substring(0, 10)%></td>
				<td><%=dto.getSubmonth()%></td>
				<td><%=dto.getCquantity()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			if (list.size() == 0) {
		%>
		<table>
			<tr>
				<td colspan="10" align="center"><h3>구독중인 제품이 없습니다.</h3></td>
			</tr>
		</table>
		<%
			}
		%>
		<br /> <br />
		<hr width="80%" color="#E4F7BA" />
			</div>
			
	 
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
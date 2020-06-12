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
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
</head>
<body>
	<div align="center">
	<%@ include file="include/header.jsp" %>
	<%@ include file="include/mypageSidebar.jsp" %>	
		<hr width="80%" color="#CEF279" />
		<h3>구독 취소중인 제품</h3>
		<hr width="80%" color="#E4F7BA" />
		<br /> <br />
		<table width="700">
			<tr align="center">
				<th>구독번호</th>
				<th>상점</th>
				<th>제품명</th>
				<th>구독 취소일</th>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					Subscribe_recordDTO dto = list.get(i);
			%>
			<tr align="center">
				<td><a
					href="<%=request.getContextPath()%>/reccan_cont.do?subnum=<%=dto.getSubnum()%>&sid=<%=sid%>"><%=dto.getSubnum()%></a></td>
				<td><%=dto.getBname()%></td>
				<td><%=dto.getPname()%></td>
				<td><%=dto.getCday().substring(0, 10)%></td>
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
				<td colspan="10" align="center"><h3>구독 취소한 제품이 없습니다.</h3></td>
			</tr>
		</table>
		<%
			}
		%>
		<br /> <br />
	</div>
</body>
</html>
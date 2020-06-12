<%@page import="com.gudok.model.Subscribe_recordDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.gudok.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Subscribe_recordDTO dto = (Subscribe_recordDTO) request.getAttribute("recCont");
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
	<%@ include file="../include/header.jsp"%>
	<%@ include file="../include/mypageSidebar.jsp"%>
		<hr width="70%" color="#CEF279" />
		<h3>구독 취소 페이지</h3>
		<hr width="70%" color="#E4F7BA" />
		<br /> <br />
		<form method="post" action="rec_change_end.do">
			<table width="900">
				<tr align="center">
					<td><%=dto.getPname()%></td>
					<td><select name="cquantity" class="text2">
							<%
								for (int i = 1; i <= dto.getCquantity(); i++) {
							%>
							<option value="<%=i%>"><%=i%>개 취소
							</option>
							<%
								}
							%>
					</select></td>
					<td><%=dto.getSubmonth()%> 개월</td>
					<td><%=dto.getPrice()%> 원</td>
					<td><%=dto.getBname()%></td>
					<td hidden=""><input name="subnum"
						value="<%=dto.getSubnum()%>"></td>
					<td hidden=""><input name="quantity"
						value="<%=dto.getCquantity()%>"></td>
					<td hidden=""><input name="sid" value="<%=sid%>"></td>
				</tr>
			</table>
			<br /> <br /> <br /> 가격 변동 :
			<%=dto.getPrice() * dto.getSubmonth() * dto.getCquantity()%>
			원 &nbsp; &nbsp; <input type="submit" value="구독 취소하기"> <br />
			<br />
		</form>
		<br />
		<hr width="70%" color="#E4F7BA" />
	</div>
</body>
</html>
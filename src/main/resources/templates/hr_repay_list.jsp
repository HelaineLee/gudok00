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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.text1 {
	border: 0;
	width: 200px; /* 5cm */
	text-align: center;
}

.text2 {
	width: 40px;
	text-align: center;
}

.text3 {
	width: 60px;
	text-align: center;
}

.text4 {
	border: 0;
	width: 40px;
	text-align: center;
}

.text6 {
	border: 0;
	width: 200px;
	text-align: center;
}

.text7 {
	width: 700px;
}
</style>
</head>
<body>
	<div align="center" class="content">
		<%@ include file="include/header.jsp" %>
		<hr width="70%" color="#CEF279" />
		<h3>재구독 결제 페이지</h3>
		<hr width="70%" color="#E4F7BA" />
		<br /> <br />
		<form method="post" action="repay.do">
			<table width="900">
				<tr align="center">
					<td><input readonly="readonly" name="pname"
						value="<%=dto.getPname()%>" class="text1"></td>
					<td><input type="number" min="1" max="20" value="1"
						name="quantity" class="text2">개</td>
					<td><select name="paymonth" class="text3">
							<option value="1">1개월</option>
							<option value="3">3개월</option>
							<option value="6">6개월</option>
							<option value="12">12개월</option>
					</select></td>
					<td><input readonly="readonly" name="price"
						value="<%=dto.getPrice()%>" class="text4">원</td>
					<td><input readonly="readonly" name="bname"
						value="<%=dto.getBname()%>" class="text6"></td>
				</tr>
				<tr>
					<td colspan="5">배송지 입력 : <input name="sadd" class="text7"
						value="<%=dto.getSadd()%>"></td>
					<td hidden=""><input name="subnum"
						value="<%=dto.getSubnum()%>"></td>
					<td hidden=""><input name="sid" value="<%=sid%>"></td>
				</tr>
			</table>
			<br /> <br /> <br /> 합계 :
			<%=dto.getPrice() * dto.getSubmonth() * dto.getQuantity()%>
			원 &nbsp; &nbsp; <input type="submit" value="결제하기"> <br /> <br />
		</form>
		<br />
		<hr width="70%" color="#E4F7BA" />
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
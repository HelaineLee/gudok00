<%@page import="com.gudok.model.S_memberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.gudok.model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CartDTO> list = (List<CartDTO>) request.getAttribute("payList");
	String sid = (String) request.getAttribute("sid");
	S_memberDTO sdto = (S_memberDTO) request.getAttribute("sdto");
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
<style type="text/css">
.text1 {
	border: 0;
	width: 200px; /* 5cm */
}

.text2 {
	border: 0;
	width: 20px;
	text-align: center;
}

.text3 {
	border: 0;
	width: 20px;
	text-align: center;
}

.text4 {
	border: 0;
	width: 40px;
	text-align: center;
}

.text5 {
	border: 0;
	width: 50px;
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
	<div align="center">
	<%@ include file="../include/header.jsp" %>
    <%@ include file="../include/mypageSidebar.jsp" %>
		<hr width="70%" color="#CEF279" />
		<h3>결제 페이지</h3>
		<hr width="70%" color="#E4F7BA" />
		<br /> <br />
		<form method="post" action="pay_delete.do">
			<%
				for (int i = 0; i < list.size(); i++) {
					CartDTO dto = list.get(i);
			%>
			<table width="900">
				<tr align="center">
					<td><%=(i + 1)%></td>
					<td><input readonly="readonly" name="pname"
						value="<%=dto.getpName()%>" class="text1"></td>
					<td><input readonly="readonly" name="quantity" class="text2"
						value="<%=dto.getQuantity()%>">개</td>
					<td><input readonly="readonly" name="paymonth" class="text3"
						value="<%=dto.getPayMonth()%>">개월</td>
					<td><input readonly="readonly" name="price"
						value="<%=dto.getPrice()%>" class="text4">원</td>
					<td>총 <input readonly="readonly"
						value="<%=dto.getPrice() * dto.getQuantity() * dto.getPayMonth()%>"
						class="text5">원
					</td>
					<td><input readonly="readonly" name="bname"
						value="<%=dto.getbName()%>" class="text6"></td>
				</tr>
				<tr>
					<td colspan="7">배송지 입력 : <select name="sadd" class="text7">
							<option value="<%=sdto.getSadd()%>"><%=sdto.getSadd()%></option>
							<%
								if (sdto.getSadd1() != null) {
							%>
							<option value="<%=sdto.getSadd1()%>"><%=sdto.getSadd1()%></option>
							<%
								}
							%>
							<%
								if (sdto.getSadd2() != null) {
							%>
							<option value="<%=sdto.getSadd2()%>"><%=sdto.getSadd2()%></option>
							<%
								}
							%>
							<%
								if (sdto.getSadd3() != null) {
							%>
							<option value="<%=sdto.getSadd1()%>"><%=sdto.getSadd3()%></option>
							<%
								}
							%>
					</select>
					</td>
					<td><input type="hidden" name="sid" value="<%=sid%>"></td>
					<td><input type="hidden" name="pid" value="<%=dto.getbId()%>"></td>
					<td><input type="hidden" name="bid" value="<%=dto.getpId()%>"></td>
					<td><input type="hidden" name="cnum"
						value="<%=dto.getcNum()%>"></td>
					<td><input type="hidden" name="cartnum"
						value="<%=dto.getCartNum()%>"></td>
				</tr>
			</table>
			<br />
			<%
				}
			%>
			<%
				if (list.size() == 0) {
			%>
			<table>
				<tr>
					<td colspan="10" align="center"><h3>결제 오류</h3></td>
				</tr>
			</table>
			<%
				}
			%>

			<br /> <br />
			<%
				int total = 0;
				for (int i = 0; i < list.size(); i++) {
					CartDTO dto = list.get(i);
					total += dto.getPrice() * dto.getPayMonth() * dto.getQuantity();
			%>
			<%
				}
			%>
			합계 :
			<%=total%>
			원 &nbsp; &nbsp; <input type="submit" value="결제하기"> <br /> <br />
		</form>
		<br />
		<hr width="70%" color="#E4F7BA" />
	</div>
</body>
</html>
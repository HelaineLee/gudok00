<%@page import="java.util.ArrayList"%>
<%@page import="com.gudok.model.CartDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CartDTO> list = (List<CartDTO>) request.getAttribute("cartList");
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
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(function() {
			$("#checkall").click(function() {
				if ($("#checkall").prop("checked")) {
					$("input[type=checkbox]").prop("checked", true);
				} else {
					$("input[type=checkbox]").prop("checked", false);
				}
			});
		});
	});
	function check(no){
		var quantity = $("#text2_"+no).val();
		var paymonth = $("#text3_"+no).val();
		var price = $("#text4_"+no).val();
		if ($("#check_"+no).prop("checked")) {
			$("#text5_"+no).val(quantity * paymonth * price);
		} else {
			$("#text5_"+no).val(0);
			$("#checkall").prop("checked", false);
		}
	}
	function quant(no){
 		var quantity = $("#text2_"+no).val();
		var paymonth = $("#text3_"+no).val();
		var price = $("#text4_"+no).val();
		if ($("#check_"+no).prop("checked")) {
			$("#text5_"+no).val(quantity * paymonth * price);
		} else {
			$("#text5_"+no).val(0);
			$("#checkall").prop("checked", false);
		}
	}
	function month(no){
		var quantity = $("#text2_"+no).val();
		var paymonth = $("#text3_"+no).val();
		var price = $("#text4_"+no).val();
		if ($("#check_"+no).prop("checked")) {
			$("#text5_"+no).val(quantity * paymonth * price);
		} else {
			$("#text5_"+no).val(0);
			$("#checkall").prop("checked", false);
		}
	}
</script>
<style type="text/css">
.text1 {
	border: 0;
	width: 200px; /* 5cm */
	text-align: center;
}

.text4 {
	border: 0;
	width: 60px;
	text-align: center;
}

.text5 {
	border: 0;
	width: 60px;
	text-align: center;
}

.text6 {
	border: 0;
	width: 200px;
	text-align: center;
}

#text7 {
	border: 0;
	width: 100px;
	text-align: center;
}
</style>
</head>
<body>
	<div align="center">
	<%@ include file="../include/header.jsp" %>
	<%@ include file="../include/mypageSidebar.jsp" %>
		<hr width="70%" color="#CEF279" />
		<h3>장바구니 목록</h3>
		<hr width="70%" color="#E4F7BA" />
		<br /> <br />
		<form method="post" action="pay_list.do">
			<table width="1100">
				<tr align="center">
					<th>번호</th>
					<th>제품</th>
					<th>수량</th>
					<th>구독 기간</th>
					<th>1개 당 가격</th>
					<th>총 가격</th>
					<th>상점</th>
					<th></th>
					<th hidden=""></th>
					<th hidden=""></th>
					<th hidden=""></th>
					<th hidden=""></th>
					<th hidden=""></th>
				</tr>
				<%
					for (int i = 0; i < list.size(); i++) {
						CartDTO dto = list.get(i);
				%>
				<tr align="center">
					<td><label><input type="checkbox" name="checknum"
							id="check_<%=dto.getCartNum()%>" value="<%=dto.getCartNum()%>"
							checked="checked" onclick="check(<%=dto.getCartNum()%>)">
							<%=(i + 1)%></label></td>
					<td><input readonly="readonly" name="pname"
						value="<%=dto.getpName()%>" class="text1"></td>
					<td><input type="number" min="1" max="20"
						value="<%=dto.getQuantity()%>" name="quantity"
						id="text2_<%=dto.getCartNum()%>" width="25px"
						onclick="quant(<%=dto.getCartNum()%>)">개</td>
					<td><select name="paymonth" id="text3_<%=dto.getCartNum()%>"
						onclick="month(<%=dto.getCartNum()%>)">
							<option value="<%=dto.getPayMonth()%>"><%=dto.getPayMonth()%>개월
							</option>
							<option value="1">1개월</option>
							<option value="3">3개월</option>
							<option value="6">6개월</option>
							<option value="12">12개월</option>
					</select></td>
					<td><input readonly="readonly" name="price"
						value="<%=dto.getPrice()%>" id="text4_<%=dto.getCartNum()%>"
						width="40px" class="text4">원</td>
					<td><input readonly="readonly"
						value="<%=dto.getPrice() * dto.getQuantity() * dto.getPayMonth()%>"
						id="text5_<%=dto.getCartNum()%>" width="50px" class="text5">원</td>
					<td><input readonly="readonly" name="bname"
						value="<%=dto.getbName()%>" class="text6"></td>
					<td><input type="button" value="삭제"
						onclick="location.href='cart_delete.do?cartnum=<%=dto.getCartNum()%>&sid=<%=sid%>'"></td>
					<td><input type="hidden" name="sid" value="<%=sid%>"></td>
					<td><input type="hidden" name="pid" value="<%=dto.getbId()%>"></td>
					<td><input type="hidden" name="bid" value="<%=dto.getpId()%>"></td>
					<td><input type="hidden" name="cnum"
						value="<%=dto.getcNum()%>"></td>
					<td><input type="hidden" name="cartnum" value="<%=dto.getCartNum()%>"></td>
				</tr>
				<%
					}
				%>
				<%
					if (list.size() == 0) {
				%>
				<tr>
					<td colspan="10" align="center"><h3>장바구니에 상품이 없습니다.</h3></td>
				</tr>
				<%
					}
				%>
			</table>
			<br /> <br /> <label><input type="checkbox" name="checkall"
				id="checkall"> 전체 선택</label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			<%
				int total = 0;
				for (int i = 0; i < list.size(); i++) {
					CartDTO dto = list.get(i);
					total += dto.getPrice() * dto.getPayMonth() * dto.getQuantity();
			%>
			<%
				}
			%>
			총 <input name="total" value="<%=total%>" id="text7"> 원 &nbsp;
			&nbsp; <input type="submit" value="구독하기"> <br /> <br />
		</form>
		<br />		
	</div>	
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
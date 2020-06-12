<%@page import="java.util.List"%>
<%@page import="com.gudok.model.smemberDAO"%>
<%@page import="com.gudok.model.ProductsDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<ProductsDTO> list = (List<ProductsDTO>) request.getAttribute("list");
	int cnum = 0;
	session.setAttribute("cnum", cnum);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#tb td {
	padding: 100px;
}
</style>
</head>
<body>
	<div align="center">
		<%@ include file="include/header.jsp"%>

		<table cellspacing="20px" id="tb">
			<tr align="center">
				<%
					for (int b = 0; b < list.size(); b++) {
							ProductsDTO dto = list.get(b);
				%>
				<td><a href="pCont.do?no=<%=dto.getP_id()%>"><img
						src="./images/<%=dto.getPimage()%>" width="200"></a></td>
				<%
					}
				%>
			</tr>
			<tr align="center">
				<%
					for (int b = 0; b < list.size(); b++) {
							ProductsDTO dto = list.get(b);
				%>
				<td><br />
					<hr color="#E4F7BA" /> <a href="pCont.do?no=<%=dto.getP_id()%>"><%=dto.getPname()%>
						/ <%=dto.getBname()%></a><br/>
						<%=dto.getPrice() %>원
					<hr color="#E4F7BA" /> <br /> <br /></td>
				<%
					}
				%>
			</tr>
		</table>
	</div>
	<footer><%@ include file="include/footer.jsp"%></footer>
</body>
</html>
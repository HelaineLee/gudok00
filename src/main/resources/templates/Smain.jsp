<%@page import="com.gudok.model.smemberDAO"%>
<%@page import="com.gudok.model.ProductsDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	smemberDAO dao = smemberDAO.getInstance();
	List<ProductsDTO> list = dao.firstPage(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  	#tb td{
  		padding-left: 30px;
  		padding-right: 30px;
  	}
  </style>
</head>
<body>
	<div align="center" class="content">
		<%@ include file="include/header.jsp" %>
		<%@ include file="include/Carousel.jsp" %><br/><br/><br/><br/>
		<h3><strong>새로 들어온 상품</strong></h3>  	
		<table id="tb">
		<tr align="center">		
		<%for(int i=0; i<4; i++) {
 			ProductsDTO dto = list.get(i); %>
		  <td>		  	
			<a href="pCont.do?no=<%=dto.getP_id()%>"><img src="./images/<%=dto.getPimage() %>" width="200"></a>
		  </td>
		<%}%>
		</tr>
		<tr align="center">
		<%for(int i=0; i<4; i++) {
 			ProductsDTO dto = list.get(i); %>
		  <td>
		  	<br />
		  	<hr color="#E4F7BA"/>		  	
			<a href="pCont.do?no=<%=dto.getP_id()%>"><%=dto.getPname() %> / <%=dto.getBname() %></a>	
			<hr color="#E4F7BA"/>		
			<br /><br />
		  </td>
		<%}%>
		</tr>	
		<tr align="center">		
		<%for(int i=4; i<list.size(); i++) {
 			ProductsDTO dto = list.get(i); %>
		  <td>
			<a href="pCont.do?no=<%=dto.getP_id()%>"><img src="./images/<%=dto.getPimage() %>" width="200"></a>
		  </td>
		<%}%>
		</tr>
		<tr align="center">
		<%for(int i=4; i<list.size(); i++) {
 			ProductsDTO dto = list.get(i); %>
		  <td>
		  	<hr color="#E4F7BA"/>	
			<a href="pCont.do?no=<%=dto.getP_id()%>"><%=dto.getPname() %> / <%=dto.getBname() %></a>
			<hr color="#E4F7BA"/>				
		  </td>
		<%}%>
		</tr>		
		</table>
	</div>	
	<%@ include file="include/footer.jsp" %>
</body>
</html>
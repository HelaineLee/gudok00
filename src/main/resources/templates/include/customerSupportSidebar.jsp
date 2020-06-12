<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<% int cnum =(int)session.getAttribute("cnum");	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

nav, section {
	float: left;
}
nav {
	width: 200px;
	left-margin: 100px;
	text-align: left;
}
</style>
</head>
<body>
		<nav>
		  <ul>
		  	<li><a href="faq_list.do">자주 묻는 질문</a></li>
		  	<li><a href="
		  		<%if(cnum==1) {%>
		  		sqna_list.do
		  	   <%}else if(cnum==2) {%>
		  	    bqna_list.do
		  	   <%}else if(cnum==0) {%>
		  		Login.do
		  	   <%} %>">1:1 문의</a>
		  	  
		  	</li>
		  </ul>
		</nav>	
</body>
</html>
<%@page import="com.gudok.model.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String b_id = request.getParameter("b_id");
	
	//DB와 연동
	LoginDAO dao = LoginDAO.getInstance();
	
	int res = dao.Bid_exist(b_id);
	out.println(res);
	
%>

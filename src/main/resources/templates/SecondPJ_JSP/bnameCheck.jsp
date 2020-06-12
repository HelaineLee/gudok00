<%@page import="com.gudok.model.JoinDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String bname = request.getParameter("bname");
	
	//DB와 연동
	JoinDAO dao = JoinDAO.getInstance();
	
	int res = dao.checkBname(bname);
	out.println(res);
	
%>
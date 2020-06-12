<%@page import="com.gudok.model.smemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
   String r_id = request.getParameter("r_id");
   
   //DB와 연동
   smemberDAO dao = smemberDAO.getInstance();
   
   int res = dao.checkS_Id(r_id);
   out.println(res);
%>
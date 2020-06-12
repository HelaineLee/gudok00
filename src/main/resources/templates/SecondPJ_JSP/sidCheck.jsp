<%@page import="com.gudok.model.smemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
   String s_id = request.getParameter("s_id");
   
   //DB와 연동
   smemberDAO dao = smemberDAO.getInstance();
   
   int res = dao.checkS_Id(s_id);
   out.println(res);
%>
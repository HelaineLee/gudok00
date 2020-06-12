<%@page import="com.gudok.model.PurchaseDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int cartnum = Integer.parseInt(request.getParameter("cartnum"));
	int quant = Integer.parseInt(request.getParameter("quant"));
	PurchaseDAO dao = PurchaseDAO.getInstance();
	dao.cartQuant(cartnum, quant);
%>
<%@page import="com.gudok.model.PurchaseDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int cartnum = Integer.parseInt(request.getParameter("cartnum"));
	int month = Integer.parseInt(request.getParameter("month"));
	PurchaseDAO dao = PurchaseDAO.getInstance();
	dao.cartMonth(cartnum, month);
%>
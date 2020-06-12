<%@page import="com.gudok.model.SqnaDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	SqnaDTO dto = (SqnaDTO) request.getAttribute("qnaCont");
	int nowPage = (int) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center" class="content">
	<%@ include file="include/header.jsp" %>
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getUserId()%>님의 문의 글
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<h3><%=dto.getSqnaQtitle()%></h3>
		<br />
		<table width="800">
			<tr>
				<th>구독번호</th>
				<th>카테고리</th>
			</tr>
			<tr>
				<td align="center"><%=dto.getSubNum()%></td>
				<td align="center"><%=dto.getcNum()%></td>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<td align="right">문의일자 : <%=dto.getSqnaQdate()%></td>
			</tr>
			<tr>
				<td><textarea rows="15" cols="80" readonly><%=dto.getSqnaCont()%></textarea>
				</td>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<%
					if (dto.getAdminId() != null) {
				%>
				<td align="right">관리자 : <%=dto.getAdminId()%></td>
				<%
					}
				%>
			</tr>
			<tr>
				<%
					if (dto.getSqnaAdate() != null) {
				%>
				<td align="right">작성일자 : <%=dto.getSqnaAdate()%></td>
				<%
					}
				%>
			</tr>
			<tr>
				<%
					if (dto.getSqnaAcont() != null) {
				%>
				<td><textarea rows="15" cols="80" readonly><%=dto.getSqnaAcont()%></textarea>
				</td>
				<%
					}
				%>
			</tr>
		</table>
		<input type="button" value="수정"
			onclick="location.href='sqna_update.do?no=<%=dto.getSqnaNo()%>&page=<%=nowPage%>'">
		<input type="button" value="삭제"
			onclick="location.href='sqna_delete.do?no=<%=dto.getSqnaNo()%>&page=<%=nowPage%>'">
		<input type="button" value="답변"
			onclick="location.href='sqna_answer.do?no=<%=dto.getSqnaNo()%>&page=<%=nowPage%>'">
		<input type="button" value="목록"
			onclick="location.href='sqna_list.do?page=<%=nowPage%>'"> <br />
		<br />
		<hr width="65%" color="#E4F7BA" />
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
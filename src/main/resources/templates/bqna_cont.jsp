<%@page import="com.gudok.model.BqnaDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BqnaDTO dto = (BqnaDTO) request.getAttribute("qnaCont");
	int nowPage = (int) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
</head>
<body>
	<div align="center" class="content">
	 <%@ include file="include/header.jsp" %>
	 <%@ include file="include/customerSupportSidebar.jsp" %>	
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getBqnaId()%>님의 문의 글	</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<h3><%=dto.getBqnaTitle()%></h3>
		<br />
		<table>
			<tr>
				<td align="right">카테고리 : <%=dto.getcNum()%></td>
			</tr>
			<tr>
				<td align="right">문의일자 : <%=dto.getBqnaQdate()%></td>
			</tr>
			<tr>
				<td><textarea rows="15" cols="80" readonly><%=dto.getBqnaCont()%></textarea>
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
					if (dto.getBqnaAdate() != null) {
				%>
				<td align="right">작성일자 : <%=dto.getBqnaAdate()%></td>
				<%
					}
				%>
			</tr>
			<tr>
				<%
					if (dto.getBqnaAnswer() != null) {
				%>
				<td><textarea rows="15" cols="80" readonly><%=dto.getBqnaAnswer()%></textarea>
				</td>
				<%
					}
				%>
			</tr>
		</table>
		<input type="button" value="수정"
			onclick="location.href='bqna_update.do?no=<%=dto.getBqnaNo()%>&page=<%=nowPage%>'">
		<input type="button" value="삭제"
			onclick="location.href='bqna_delete.do?no=<%=dto.getBqnaNo()%>&page=<%=nowPage%>'">
		<input type="button" value="답변"
			onclick="location.href='bqna_answer.do?no=<%=dto.getBqnaNo()%>&page=<%=nowPage%>'">
		<input type="button" value="목록"
			onclick="location.href='bqna_list.do?page=<%=nowPage%>'"> <br />
		<br />
		<hr width="65%" color="#E4F7BA" />
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
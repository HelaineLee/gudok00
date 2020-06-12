<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	QnaDTO dto = (QnaDTO) request.getAttribute("qnaCont");
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
	<div align="center"  class="content">
	<%@ include file="include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	 <div class="col-md-10">
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getsId()%>님의 문의 글
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<h3><%=dto.getqTitle()%></h3>
		<br />
		<table width="800">
			<tr>
				<th>상점</th>
				<th>구독번호</th>
				<th>카테고리</th>
			</tr>
			<tr>
				<td align="center"><%=dto.getbName()%></td>
				<td align="center"><%=dto.getSubNum()%></td>
				<td align="center"><%=dto.getcNum()%></td>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<td align="right">문의일자 : <%=dto.getqDay()%></td>
			</tr>
			<tr>
				<td><textarea rows="15" cols="80" readonly><%=dto.getqCont()%></textarea>
				</td>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<%
					if (dto.getaDay() != null) {
				%>
				<td align="right">작성일자 : <%=dto.getaDay()%></td>
				<%
					}
				%>
			</tr>
			<tr>
				<%
					if (dto.getaCont() != null) {
				%>
				<td><textarea rows="15" cols="80" readonly><%=dto.getaCont()%></textarea>
				</td>
				<%
					}
				%>
			</tr>
		</table>
		<input type="button" value="수정"
			onclick="location.href='qna_update.do?no=<%=dto.getqNum()%>&page=<%=nowPage%>'">
		<input type="button" value="삭제"
			onclick="location.href='qna_delete.do?no=<%=dto.getqNum()%>&page=<%=nowPage%>'">
		<input type="button" value="답변"
			onclick="location.href='qna_answer.do?no=<%=dto.getqNum()%>&page=<%=nowPage%>'">
		<input type="button" value="목록"
			onclick="location.href='qna_list.do?page=<%=nowPage%>'"> <br />
		<br />
		<hr width="65%" color="#E4F7BA" />
			</div>
			
	 
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
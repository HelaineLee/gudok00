<%@page import="com.gudok.model.BqnaDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BqnaDTO dto = (BqnaDTO) request.getAttribute("qnaUpdate");
	int nowPage = (int) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<%@ include file="include/header.jsp" %>
    <%@ include file="include/customerSupportSidebar.jsp" %>	
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getBqnaId()%>님의 문의 글 수정
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<form method="post" action="bqna_update_ok.do?no=<%=dto.getBqnaNo()%>&page=<%=nowPage%>">
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><%=dto.getBqnaId()%></td>
				</tr>
				<tr>
					<th align="center">카테고리</th>
					<td><%=dto.getcNum()%></td>
				</tr>
				<tr>
					<th align="center">제목</th>
					<td><textarea rows="1" cols="80" name="qtitle"><%=dto.getBqnaTitle()%>
					</textarea></td>
				</tr>
				<tr>
					<th align="center">문의 작성</th>
					<td><textarea rows="15" cols="80" name="qcont"><%=dto.getBqnaCont()%>
					</textarea></td>
				</tr>
			</table>
			<br /> <input type="submit" value="수정"> <input type="reset"
				value="취소"> <br />
		</form>
		<br />
		<hr width="65%" color="#E4F7BA" />
	</div>
</body>
</html>
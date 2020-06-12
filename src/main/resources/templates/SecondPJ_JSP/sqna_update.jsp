<%@page import="com.gudok.model.SqnaDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	SqnaDTO dto = (SqnaDTO) request.getAttribute("qnaUpdate");
	int nowPage = (int) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center" class="content">
	<%@ include file="../include/header.jsp" %>
	
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getUserId()%>님의 문의 글 수정
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<form method="post" action="sqna_update_ok.do?no=<%=dto.getSqnaNo()%>&page=<%=nowPage%>">
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><%=dto.getUserId()%></td>
				</tr>
				<tr>
					<th align="center">구독 번호</th>
					<td><%=dto.getSubNum()%></td>
				</tr>
				<tr>
					<th align="center">카테고리</th>
					<td><%=dto.getcNum()%></td>
				</tr>
				<tr>
					<th align="center">제목</th>
					<td><textarea rows="1" cols="80" name="qtitle"><%=dto.getSqnaQtitle()%>
					</textarea></td>
				</tr>
				<tr>
					<th align="center">문의 작성</th>
					<td><textarea rows="15" cols="80" name="qcont"><%=dto.getSqnaCont()%>
					</textarea></td>
				</tr>
			</table>
			<br /> <input type="submit" value="수정"> <input type="reset"
				value="취소"> <br />
		</form>
		<br />
		<hr width="65%" color="#E4F7BA" />
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
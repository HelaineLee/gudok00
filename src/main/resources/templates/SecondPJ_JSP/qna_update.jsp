<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	QnaDTO dto = (QnaDTO) request.getAttribute("qnaUpdate");
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
	<%@ include file="../include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="../include/mypageSidebar.jsp" %>
	</div>
	 <div class="col-md-10">
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getsId()%>님의 문의 글 수정
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<form method="post" action="qna_update_ok.do?no=<%=dto.getqNum()%>&page=<%=nowPage%>">
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><%=dto.getsId()%></td>
				</tr>
				<tr>
					<th align="center">상점</th>
					<td><%=dto.getbName()%></td>
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
					<td><textarea rows="1" cols="80" name="qtitle"><%=dto.getqTitle()%>
					</textarea></td>
				</tr>
				<tr>
					<th align="center">문의 작성</th>
					<td><textarea rows="15" cols="80" name="qcont"><%=dto.getqCont()%>
					</textarea></td>
				</tr>
			</table>
			<br /> <input type="submit" value="수정"> <input type="reset"
				value="취소"> <br />
		</form>
		<br />
		<hr width="65%" color="#E4F7BA" />
			</div>
			
	 
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
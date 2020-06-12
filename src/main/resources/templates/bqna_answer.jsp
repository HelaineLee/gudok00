<%@page import="com.gudok.model.BqnaDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BqnaDTO dto = (BqnaDTO) request.getAttribute("qnaAnswer");
	int nowPage = (int) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
</head>
<body>	
	<%@ include file="include/header.jsp" %>
    <%@ include file="include/customerSupportSidebar.jsp" %>	
	<div align="center" class="content">
		<hr width="65%" color="#CEF279" />
		<h3><%=dto.getBqnaId()%>님의 문의 글에 대한 답변
		</h3>
		<hr width="65%" color="#E4F7BA" />
		<form method="post" action="bqna_answer_ok.do?no=<%=dto.getBqnaNo()%>&page=<%=nowPage%>">
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
					<td><textarea rows="1" cols="80" name="qtitle"
							readonly="readonly"><%=dto.getBqnaTitle()%>
					</textarea></td>
				</tr>
				<tr>
					<th align="center">문의</th>
					<td><textarea rows="15" cols="80" name="qcont"
							readonly="readonly"><%=dto.getBqnaCont()%>
					</textarea></td>
				</tr>
				<tr>
					<th align="center">관리자</th>
					<td><select name="admin">
							<option value="김현중">김현중</option>
							<option value="유소정">유소정</option>
							<option value="이현림">이현림</option>
							<option value="장예영">장예영</option>
					</select></td>
				</tr>
				<tr>
					<th align="center">답변 작성</th>
					<td><textarea rows="15" cols="80" name="acont"><%=dto.getBqnaAnswer()%>
					</textarea></td>
				</tr>
			</table>
			<br /> <input type="submit" value="답변"> <input type="reset"
				value="취소"> <br />
		</form>
		<br />
		<hr width="65%" color="#E4F7BA" />
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
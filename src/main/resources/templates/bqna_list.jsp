<%@page import="com.gudok.model.BqnaDTO"%>
<%@page import="com.gudok.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<BqnaDTO> qna = (List<BqnaDTO>) request.getAttribute("qnaList");
	int nowPage = (int) request.getAttribute("page");
	int blk = (int) request.getAttribute("blk");
	int startBlk = (int) request.getAttribute("startBlk");
	int endBlk = (int) request.getAttribute("endBlk");
	int allPage = (int) request.getAttribute("allPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="css/bootstrap_3-3-2.css">
</head>
<body>
	<div align="center" class="content">
	<%@ include file="include/header.jsp" %>
    <%@ include file="include/customerSupportSidebar.jsp" %>		
		<h3>1:1 문의</h3>
		<br /> <br />
		<table width="800">
			<tr>
				<th>문의번호</th>
				<th>작성자</th>
				<th>카테고리</th>
				<th>글제목</th>
				<th>문의일자</th>
				<th>답변일자</th>
			</tr>
			<%
				for (int i = 0; i < qna.size(); i++) {
					BqnaDTO dto = qna.get(i);
			%>
			<tr>
				<td><%=dto.getBqnaNo()%></td>
				<td><%=dto.getBqnaId()%></td>
				<td><%=dto.getcNum()%></td>
				<td><a
					href="bqna_cont.do?no=<%=dto.getBqnaNo()%>&page=<%=nowPage%>"><%=dto.getBqnaTitle()%></a></td>
				<td><%=dto.getBqnaQdate().substring(0, 10)%></td>
				<%
					if (dto.getBqnaAdate() == null) {
				%>
				<td>답변 준비중입니다.</td>
				<%
					} else {
				%>
				<td><%=dto.getBqnaAdate().substring(0, 10)%></td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>
			<%
				if (qna.size() == 0) {
			%>
			<tr>
				<td colspan="7" align="center"><h3>문의 내역이 없습니다.</h3></td>
			</tr>
			<%
				}
			%>
		</table>
		<div>
			<ul class="pagination">
				<%
					if (nowPage > blk / 2) {
				%>
				<li class="paginate_button previous"><a
					href="bqna_list.do?page=1">◀◀</a></li>
				<li><a href="bqna_list.do?page=<%=startBlk%>">◀</a></li>
				<%
					}
					for (int i = startBlk; i <= endBlk; i++) {
						if (i == nowPage) {
				%>
				<li class="active"><a href="bqna_list.do?page=<%=i%>"><%=i%></a></li>
				<%
					}
				%>
				<%
					if (i != nowPage) {
				%>
				<li><a href="bqna_list.do?page=<%=i%>"><%=i%></a></li>
				<%
					}
					}
					if (nowPage <= allPage / 2) {
				%>
				<li><a href="bqna_list.do?page=<%=endBlk%>">▶</a></li>
				<li class="paginate_button next"><a
					href="bqna_list.do?page=<%=allPage%>">▶▶</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<input type="button" value="문의하기"
			onclick="location.href='bqna_write.do'"> <br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/bqna_search.do">
			<select name="find">
				<option value="ticon">제목+내용</option>
				<option value="cnum">카테고리</option>
				<option value="sid">작성자</option>
			</select> <input type="text" name="keyword"> <input type="submit"
				value="검색">
		</form>
	</div>
</body>
</html>
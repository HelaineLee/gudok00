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
	String find = (String) request.getAttribute("find");
	String keyword = (String) request.getAttribute("keyword");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap_3-3-2.css">
</head>
<body>
	<div align="center">
	<%@ include file="include/header.jsp" %>
    <%@ include file="include/customerSupportSidebar.jsp" %>	
		<hr width="70%" color="#CEF279" />
		<h3>사업자 게시판 검색 결과</h3>
		<hr width="70%" color="#E4F7BA" />
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
				<td><a href="bqna_cont.do?no=<%=dto.getBqnaNo()%>"><%=dto.getBqnaTitle()%></a></td>
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
				<td colspan="7" align="center"><h3>검색 결과가 존재하지 않습니다.</h3></td>
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
					href="bqna_search.do?page=1&find=<%=find%>&keyword=<%=keyword%>">◀◀</a></li>
				<li><a
					href="bqna_search.do?page=<%=startBlk%>&find=<%=find%>&keyword=<%=keyword%>">◀</a></li>
				<%
					}
					for (int i = startBlk; i <= endBlk; i++) {
						if (i == nowPage) {
				%>
				<li class="active"><a
					href="bqna_search.do?page=<%=i%>&find=<%=find%>&keyword=<%=keyword%>"><%=i%></a></li>
				<%
					}
				%>
				<%
					if (i != nowPage) {
				%>
				<li><a
					href="bqna_search.do?page=<%=i%>&find=<%=find%>&keyword=<%=keyword%>"><%=i%></a></li>
				<%
					}
					}
					if (nowPage <= allPage / 2) {
				%>
				<li><a
					href="bqna_search.do?page=<%=endBlk%>&find=<%=find%>&keyword=<%=keyword%>">▶</a></li>
				<li class="paginate_button next"><a
					href="bqna_search.do?page=<%=allPage%>&find=<%=find%>&keyword=<%=keyword%>">▶▶</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<input type="button" value="목록"
			onclick="location.href='bqna_list.do?page=<%=nowPage%>'"> <br />
		<br />
		<hr width="70%" color="#E4F7BA" />
	</div>
</body>
</html>
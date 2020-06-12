<%@page import="com.gudok.model.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<QnaDTO> qna = (List<QnaDTO>) request.getAttribute("qnaList");
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
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap_3-3-2.css">
</head>
<body>
	<div align="center"  class="content">
	<%@ include file="include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	 <div class="col-md-10">
		<hr width="70%" color="#CEF279" />
		<h3>QNA 검색 결과</h3>
		<hr width="70%" color="#E4F7BA" />
		<br /> <br />
		<table width="800">
			<tr>
				<th>문의번호</th>
				<th>작성자</th>
				<th>상점</th>
				<th>카테고리</th>
				<th>글제목</th>
				<th>문의일자</th>
				<th>답변일자</th>
			</tr>
			<%
				for (int i = 0; i < qna.size(); i++) {
					QnaDTO dto = qna.get(i);
			%>
			<tr>
				<td><%=dto.getqNum()%></td>
				<td><%=dto.getsId()%></td>
				<td><%=dto.getbName()%></td>
				<td><%=dto.getcNum()%></td>
				<td><a href="qna_cont.do?no=<%=dto.getqNum()%>&page=<%=nowPage%>"><%=dto.getqTitle()%></a></td>
				<td><%=dto.getqDay().substring(0, 10)%></td>
				<%
					if (dto.getaDay() == null) {
				%>
				<td>답변 준비중입니다.</td>
				<%
					} else {
				%>
				<td><%=dto.getaDay().substring(0, 10)%></td>
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
					href="qna_search.do?page=1&find=<%=find%>&keyword=<%=keyword%>">◀◀</a></li>
				<li><a
					href="qna_search.do?page=<%=startBlk%>&find=<%=find%>&keyword=<%=keyword%>">◀</a></li>
				<%
					}
					for (int i = startBlk; i <= endBlk; i++) {
						if (i == nowPage) {
				%>
				<li class="active"><a
					href="qna_search.do?page=<%=i%>&find=<%=find%>&keyword=<%=keyword%>"><%=i%></a></li>
				<%
					}
				%>
				<%
					if (i != nowPage) {
				%>
				<li><a
					href="qna_search.do?page=<%=i%>&find=<%=find%>&keyword=<%=keyword%>"><%=i%></a></li>
				<%
					}
					}
					if (nowPage <= allPage / 2) {
				%>
				<li><a
					href="qna_search.do?page=<%=endBlk%>&find=<%=find%>&keyword=<%=keyword%>">▶</a></li>
				<li class="paginate_button next"><a
					href="qna_search.do?page=<%=allPage%>&find=<%=find%>&keyword=<%=keyword%>">▶▶</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<input type="button" value="목록"
			onclick="location.href='qna_list.do?page=<%=nowPage%>'"> <br />
		<br />
		<hr width="70%" color="#E4F7BA" />
			</div>
			
	 
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
<%@page import="com.gudok.model.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	List<ReviewDTO> rev = (List<ReviewDTO>) request.getAttribute("revList");
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
		<hr width="80%" color="#CEF279" />
		<h3>삭제 요청된 리뷰</h3>
		<hr width="80%" color="#E4F7BA" />
		<br /> <br />
		<table width="800">
			<tr>
				<th>리뷰번호</th>
				<th>작성자</th>
				<th>제품이름</th>
				<th>별점</th>
				<th>리뷰제목</th>
				<th>구독 기간</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>
			<%
				for (int i = 0; i < rev.size(); i++) {
					ReviewDTO dto = rev.get(i);
			%>
			<tr>
				<td><%=dto.getRevNum()%></td>
				<td><%=dto.getsId()%></td>
				<td><%=dto.getpName()%></td>
				<%
					if (dto.getScore() == 0) {
				%>
				<td> </td>
				<%
					} else {
				%>
				<td><%=dto.getScore()%></td>
				<%
					}
				%>
				<td><a
					href="rev_cont.do?no=<%=dto.getRevNum()%>&page=<%=nowPage%>"><%=dto.getrTitle()%></a></td>
				<td><%=dto.getSubMonth()%></td>
				<td><%=dto.getHit()%></td>
				<td><%=dto.getrDate().substring(0, 10)%></td>
			</tr>
			<%
				}
			%>
			<%
				if (rev.size() == 0) {
			%>
			<tr>
				<td colspan="7" align="center"><h3>삭제 요청이 없습니다.</h3></td>
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
					href="rev_req_list.do?page=1">◀◀</a></li>
				<li><a href="rev_req_list.do?page=<%=startBlk%>">◀</a></li>
				<%
					}
					for (int i = startBlk; i <= endBlk; i++) {
						if (i == nowPage) {
				%>
				<li class="active"><a href="rev_req_list.do?page=<%=i%>"><%=i%></a></li>
				<%
					}
				%>
				<%
					if (i != nowPage) {
				%>
				<li><a href="rev_req_list.do?page=<%=i%>"><%=i%></a></li>
				<%
					}
					}
					if (nowPage <= allPage / 2) {
				%>
				<li><a href="rev_req_list.do?page=<%=endBlk%>">▶</a></li>
				<li class="paginate_button next"><a
					href="rev_req_list.do?page=<%=allPage%>">▶▶</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<hr width="80%" color="#E4F7BA" />
		</div>
		
	 
	
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
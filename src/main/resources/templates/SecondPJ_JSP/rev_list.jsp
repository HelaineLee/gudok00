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
	int cnum = (int) request.getAttribute("cnum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap_3-3-2.css">
</head>
<body>
	<div align="center"  class="content">
	<%@ include file="../include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="../include/mypageSidebar.jsp" %>
	</div>
	 <div class="col-md-10">
		<hr width="80%" color="#CEF279" />
		<h3>리뷰 목록</h3>
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
					if (dto.getScore() == 5) {
				%>
				<td>★★★★★</td>
				<%
					} else if (dto.getScore() == 4) {
				%>
				<td>★★★★</td>
				<%
					} else if (dto.getScore() == 3) {
				%>
				<td>★★★</td>
				<%
					} else if (dto.getScore() == 2) {
				%>
				<td>★★</td>
				<%
					} else {
				%>
				<td>★</td>
				<%
					}
				%>
				<td><a
					href="rev_cont.do?no=<%=dto.getRevNum()%>&page=<%=nowPage%>&cnum=<%=cnum%>"><%=dto.getrTitle()%></a></td>
				<td><%=dto.getSubMonth()%>개월</td>
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
				<td colspan="7" align="center"><h3>아직 구매 후기가 없습니다.</h3></td>
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
					href="rev_list.do?page=1">◀◀</a></li>
				<li><a href="rev_list.do?page=<%=startBlk%>">◀</a></li>
				<%
					}
					for (int i = startBlk; i <= endBlk; i++) {
						if (i == nowPage) {
				%>
				<li class="active"><a href="rev_list.do?page=<%=i%>"><%=i%></a></li>
				<%
					}
				%>
				<%
					if (i != nowPage) {
				%>
				<li><a href="rev_list.do?page=<%=i%>"><%=i%></a></li>
				<%
					}
					}
					if (nowPage <= allPage / 2) {
				%>
				<li><a href="rev_list.do?page=<%=endBlk%>">▶</a></li>
				<li class="paginate_button next"><a
					href="rev_list.do?page=<%=allPage%>">▶▶</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<br />
		<form method="post"
			action="<%=request.getContextPath()%>/rev_search.do">
			<select name="find">
				<option value="ticon">제목+내용</option>
				<option value="pname">제품이름</option>
				<option value="score">별점</option>
				<option value="submonth">구독 기간</option>
			</select> <input type="text" name="keyword"> <input type="submit"
				value="검색">
		</form>
		<br />
		<hr width="80%" color="#E4F7BA" />
		
		</div>			
		
	 
	
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
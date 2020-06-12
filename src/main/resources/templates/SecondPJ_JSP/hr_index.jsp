<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function(){
	$("#checkall").click(function() {
		if ($("#checkall").prop("checked")) {
			$(".check").prop("checked", true);
		} else {
			$(".check").prop("checked", false);
		}
	});
});
</script>
</head>
<body>
	<div align="center">
		<hr width="50%" color="#CEF279" />
		<h3>Monthly GuDok 임시 메인</h3>
		<hr width="50%" color="#E4F7BA" />
		<br /> <a href="<%=request.getContextPath()%>/qna_list.do">[QnA
			게시판]</a> <br /> <a href="<%=request.getContextPath()%>/rev_list.do">[리뷰
			게시판]</a> <br /> <a href="<%=request.getContextPath()%>/sqna_list.do">[고객센터]</a>
		<br /> <a href="<%=request.getContextPath()%>/bqna_list.do">[사업자
			게시판]</a> <br /> <a href="<%=request.getContextPath()%>/rev_req_list.do">[리뷰
			삭제 요청]</a> <br /> <br /> <a
			href="<%=request.getContextPath()%>/cart_list.do?sid=sana">[장바구니]</a><br />
		<a href="<%=request.getContextPath()%>/recsub_list.do?sid=sana">[구독목록]</a><br />
		<a href="<%=request.getContextPath()%>/reccan_list.do?sid=sana">[해지목록]</a><br />
		<a href="<%=request.getContextPath()%>/recend_list.do?sid=sana">[구독
			만료 목록]</a><br /> <br />
		<hr width="50%" color="#E4F7BA" />
		<input type="checkbox" id="checkall">테스트 <br /> <input
			type="checkbox" class="check">테스트 1<br /> <input
			type="checkbox" class="check">테스트 2<br /> <input
			type="checkbox" class="check">테스트 3<br />
	</div>
</body>
</html>
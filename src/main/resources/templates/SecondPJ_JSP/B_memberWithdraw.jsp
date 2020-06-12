<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String b_id = (String)session.getAttribute("b_id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="../css/bootstrap_3-3-2.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
	<%@ include file="../include/header.jsp" %>
	<%@ include file="../include/mypageSidebar.jsp" %>
	<div class="content">
		<hr width="50%" color="#E4F7BA"/>
		<h3>정말 탈퇴하시겠습니까?</h3>
		<hr width="50%" color="#E4F7BA"/>
		<form method="post" action="<%=request.getContextPath() %>/BmemeberGoodbye.do">
			<input type="hidden" value="<%=b_id %>" name="b_id" />
			<h4>판매자님, 정말 판매를 멈추고 탈퇴하시나요?</h4>
			<p>월간 구독은 소비자 보호를 위해 판매자님께서 탈퇴 요청을 하시면 판매 중인 상품 내역 등을 검토 후에 탈퇴 처리를 합니다.</p>
			<p>아래에 탈퇴 이유를 작성해 주신 후 탈퇴 버튼을 누르시면 7일 이내 등록된 이메일로 처리 내역을 답변드리겠습니다.</p>
			<p>작성해 주신 탈퇴 이유는 더 나은 서비스를 위해 새겨듣겠습니다.</p>
			<br /><br />
			<p>탈퇴이유</p>
			<textarea name="reason" cols="50" rows="20"></textarea><br />
			<input type="submit" value="탈퇴" />
			<input type="reset" value="다시 작성" />
			<input type="button" value="취소" onclick="history.back()" />
		</form>
	</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div align="center" class="content">
	<%@ include file="../include/header.jsp" %>
	
		<hr width="65%" color="#CEF279" />
		<h3>고객센터 문의하기</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<form method="post" action="sqna_write_ok.do">
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><input type="text" name="sid" value="${s_id }" readonly></td>
				</tr>
				<tr>
					<th align="center">구독 번호</th>
					<td><select name="subnum">
							<option value="0">미구독</option>
							<option value="1">1</option>
					</select></td>
				</tr>
				<tr>
					<th align="center">카테고리</th>
					<td><input type="radio" name="cnum" value="회원정보">회원정보
						<input type="radio" name="cnum" value="구독">구독 <input
						type="radio" name="cnum" value="해지">해지 <input type="radio"
						name="cnum" value="재구독">재구독 <input type="radio"
						name="cnum" value="기타">기타</td>
				</tr>
				<tr>
					<th align="center">제목</th>
					<td><textarea rows="1" cols="80" name="qtitle">
					</textarea></td>
				</tr>
				<tr>
					<th align="center">문의 작성</th>
					<td><textarea rows="15" cols="80" name="qcont">
					</textarea></td>
				</tr>
			</table>
			<br /> <input type="submit" value="작성"> <input type="reset"
				value="취소"> <br />
		</form>
		<br />
		<hr width="65%" color="#E4F7BA" />
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
</head>
<body>
	<div align="center">
	<%@ include file="include/header.jsp" %>
    <%@ include file="include/customerSupportSidebar.jsp" %>	
		<hr width="65%" color="#CEF279" />
		<h3>관리자에게 문의하기</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<form method="post" action="bqna_write_ok.do">
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><input type="text" name="sid" value="${b_id }" readonly></td>
				</tr>
				<tr>
					<th align="center">카테고리</th>
					<td><input type="radio" name="cnum" value="배송 정책">배송
						정책 <input type="radio" name="cnum" value="가격 정책">가격 정책 <input
						type="radio" name="cnum" value="계약 관련">계약 관련 <input
						type="radio" name="cnum" value="기타">기타</td>
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
</body>
</html>
<%@page import="com.gudok.model.Subscribe_recordDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String sid = (String) request.getAttribute("sid");
	String bname = (String) request.getAttribute("bname");
	List<Subscribe_recordDTO> list = (List<Subscribe_recordDTO>) request.getAttribute("list");
%>
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
	<div align="center"  class="content">
	<%@ include file="include/header.jsp" %>
	<div class="col-md-2">
	</div>
	 <div class="col-md-10">
		<hr width="65%" color="#CEF279" />
		<h3>Monthly GuDok 문의하기</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<form method="post" action="qna_write_ok.do">
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><input type="text" name="sid" readonly="readonly"
						value="<%=sid%>"></td>
				</tr>
				<tr>
					<th align="center">상점</th>
					<td><input type="text" name="bname" readonly="readonly"
						value="<%=bname%>"></td>
				</tr>

				<tr>
					<th align="center">구독 번호</th>
					<td><select name="subnum">
							<option value="0">미구독</option>
							<%
								for (int i = 0; i < list.size(); i++) {
									Subscribe_recordDTO dto = list.get(i);
							%>
							<option value="<%=dto.getSubnum()%>"><%=dto.getSubnum()%></option>
							<%
								}
							%>
					</select></td>
				</tr>

				<tr>
					<th align="center">카테고리</th>
					<td><input type="radio" name="cnum" value="상품문의">상품문의
						<input type="radio" name="cnum" value="배송">배송 <input
						type="radio" name="cnum" value="교환 / 환불">교환 / 환불 <input
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
			
	 
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
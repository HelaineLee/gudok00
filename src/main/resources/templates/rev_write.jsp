<%@page import="com.gudok.model.Subscribe_recordDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Subscribe_recordDTO dto = (Subscribe_recordDTO) request.getAttribute("dto");
	String sid = (String) request.getAttribute("sid");
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
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	 <div class="col-md-10">
		<hr width="65%" color="#CEF279" />
		<h3>상품 리뷰 작성하기</h3>
		<hr width="65%" color="#E4F7BA" />
		<br />
		<form method="post"
			action="<%=request.getContextPath()%>/rev_write_ok.do"
			enctype="multipart/form-data">
			<%-- enctype : 이진 파일 업로드를 위한 속성 --%>
			<table width="800">
				<tr>
					<th align="center">작성자</th>
					<td><input type="text" name="sid" readonly="readonly"
						value="<%=sid%>" style="border: 0"></td>
				</tr>
				<tr>
					<th align="center">상점</th>
					<td><input type="text" name="bname" readonly="readonly"
						value="<%=dto.getBname()%>" style="border: 0"></td>
				</tr>
				<tr>
					<th align="center">제품</th>
					<td><input type="text" name="pname" readonly="readonly"
						value="<%=dto.getPname()%>" style="border: 0"> <input
						type="hidden" name="pid" value="<%=dto.getP_id()%>"></td>
				</tr>
				<tr>
					<th align="center">별점</th>
					<td><select name="score">
							<option value="5">★★★★★</option>
							<option value="4">★★★★</option>
							<option value="3">★★★</option>
							<option value="2">★★</option>
							<option value="1">★</option>
					</select></td>
				</tr>
				<tr>
					<th align="center">구독 개월 수</th>
					<td><input type="text" name="submonth" readonly="readonly"
						value="<%=dto.getSubmonth()%>" style="border: 0"></td>
				</tr>
				<tr>
					<th align="center">구독 번호</th>
					<td><input type="text" name="paynum" readonly="readonly"
						value="<%=dto.getSubnum()%>" style="border: 0"></td>
				</tr>
				<tr>
					<th align="center">제목</th>
					<td><textarea rows="1" cols="80" name="qtitle">
					</textarea></td>
				</tr>
				<tr>
					<th align="center">리뷰 작성</th>
					<td><textarea rows="15" cols="80" name="qcont">
					</textarea></td>
				</tr>
				<tr>
					<th align="center">사진첨부</th>
					<td><input type="file" name="file"></td>
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
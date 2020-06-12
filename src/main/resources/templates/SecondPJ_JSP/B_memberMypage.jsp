<%@page import="com.gudok.model.B_memberDTO"%>
<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
		B_memberDTO dto = (B_memberDTO)request.getAttribute("Info");
		String phone = dto.getBphone();					
		StringTokenizer st = new StringTokenizer(phone, "-");
		String phone1 = st.nextToken();
		String phone2 = st.nextToken();
		String phone3 = st.nextToken();
		String email = dto.getBemail();
		StringTokenizer st2 = new StringTokenizer(email, "@");
		String email1 = st2.nextToken();
		String email2 = st2.nextToken();					
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="../css/bootstrap_3-3-2.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="../js/join.js"></script>
<script src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript" src ="../js/join.js"></script>
<script type="text/javascript">

	$(function() {		
		$("#emailSelect").change(function() {
			var selectedValue = frm.emailSelect.selectedIndex;			
			if(selectedValue!=5){
			$("#email").val($(this).val());
			$("#email").prop("readonly", true);
			}else {				
				$("#email").prop("readonly", false);
				$("#email").val('').focus();
			}
		});
	});
</script>
</head>
<body>
	<div align="center">
	<%@ include file="../include/header.jsp" %>
	<%@ include file="../include/mypageSidebar.jsp" %>
	<div class="content">
	<c:set var="dto" value="${Info }"/>		
	
		<form name="frm" method="post" action="bmemberMypageUpdate.do">
		<input type="hidden" value="${dto.getCnum() }" name="cnum" />		
			<table>			
				<tr>
					<th>아이디</th>
					<td><input type="text" value="${dto.getB_id() }" name="b_id" readonly/></td>
				</tr>				
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="bpwd" id="pwd1" onkeyup="pwdCheck()"/></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" id="pwd2" onkeyup="pwdCheck()"/><br />
						<span id="pwdCheck"></span>
					</td>
				
				</tr>
				<tr>
					<th>브랜드명</th>
					<td><input type="text" name="bname" value="${dto.getBname() }" readonly /></td>
				</tr>
				<tr>
					<th>상점 소개</th>
					<td>
						<textarea name="bstory" cols="30" rows="10">${dto.getBstory() }</textarea>
					</td>
				</tr>
				<tr>
					<th>대표명</th>
					<td><input type="text" name="bceo" value="${dto.getBceo() }" /></td>
				</tr>					
				<tr>
					<th>연락처</th>
					<td>
						<select name="bphone1">
							<option value="010" <c:if test="${dto.getBphone().substring(0,3)=='010' }">selected</c:if>>010</option>
							<option value="070" <c:if test="${dto.getBphone().substring(0,3)=='070' }">selected</c:if>>070</option>
							<option value="02"  <c:if test="${dto.getBphone().substring(0,2)=='02' }">selected</c:if>>02</option>
							<option value="031" <c:if test="${dto.getBphone().substring(0,3)=='031' }">selected</c:if>>031</option>
							<option value="032" <c:if test="${dto.getBphone().substring(0,3)=='032' }">selected</c:if>>032</option>
							<option value="033" <c:if test="${dto.getBphone().substring(0,3)=='033' }">selected</c:if>>033</option>
							<option value="041" <c:if test="${dto.getBphone().substring(0,3)=='041' }">selected</c:if>>041</option>
							<option value="042" <c:if test="${dto.getBphone().substring(0,3)=='042' }">selected</c:if>>042</option>
							<option value="043" <c:if test="${dto.getBphone().substring(0,3)=='043' }">selected</c:if>>043</option>
							<option value="044" <c:if test="${dto.getBphone().substring(0,3)=='044' }">selected</c:if>>044</option>
							<option value="051" <c:if test="${dto.getBphone().substring(0,3)=='051' }">selected</c:if>>051</option>
							<option value="052" <c:if test="${dto.getBphone().substring(0,3)=='052' }">selected</c:if>>052</option>
							<option value="053" <c:if test="${dto.getBphone().substring(0,3)=='053' }">selected</c:if>>053</option>
							<option value="054" <c:if test="${dto.getBphone().substring(0,3)=='054' }">selected</c:if>>054</option>
							<option value="055" <c:if test="${dto.getBphone().substring(0,3)=='055' }">selected</c:if>>055</option>
							<option value="061" <c:if test="${dto.getBphone().substring(0,3)=='061' }">selected</c:if>>061</option>
							<option value="062" <c:if test="${dto.getBphone().substring(0,3)=='062' }">selected</c:if>>062</option>
							<option value="063" <c:if test="${dto.getBphone().substring(0,3)=='063' }">selected</c:if>>063</option>
							<option value="064" <c:if test="${dto.getBphone().substring(0,3)=='064' }">selected</c:if>>064</option>
						</select>
						- <input type="tel" size="4" name="bphone2" value="<%=phone2%>">
						- <input type="tel" size="4" name="bphone3" value="<%=phone3%>">
					</td>								
			</tr>
				<tr>
					<th>회사 주소</th>
					<td><input type="text" name="badd" value="${dto.getBadd() }" /></td>
				</tr>
				<c:set var="email2" value="<%=email2%>"/>
				<tr>
					<th>대표 이메일 주소</th>
					<td>
						<input type="text" name="email1" value="<%=email1%>"/>@
						<input type="text" name="email2" id="email" value="${email2}" readonly/>
					<select id="emailSelect" name="emailSelect">
						<option value="">선택</option>					
						<option value="naver.com" id="naver" 
						<c:if test="${email2=='naver.com' }">selected</c:if>>naver.com</option>
						<option value="gmail.com" id="gmail"
						<c:if test="${email2=='gmail.com' }">selected</c:if>>gmail.com</option>
						<option value="hanmail.net" id="hanmail"
						<c:if test="${email2=='hanmail.net' }">selected</c:if>>hanmail.net</option>
						<option value="nate.com" id="nate"
						<c:if test="${email2=='nate.com' }">selected</c:if>>nate.com</option>
						<option value="" id="write">직접입력</option>						
					</select>
					</td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td>${dto.getBjoindate() }</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<br />
					<input type="submit" value="변경 저장"/>
					<input type="button" value="탈퇴" onclick="location.href='bmemberWithdraw.do'"/>
					</td>
				</tr>
			</table>
		</form>
	
	</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
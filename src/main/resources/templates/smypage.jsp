<%@page import="java.util.StringTokenizer"%>
<%@page import="com.gudok.model.S_memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
		S_memberDTO dto = (S_memberDTO)request.getAttribute("smemprivacy");
		String phone = dto.getSphone();					
		StringTokenizer st = new StringTokenizer(phone, "-");
		String phone1 = st.nextToken();
		String phone2 = st.nextToken();
		String phone3 = st.nextToken();
		String email = dto.getSemail();
		StringTokenizer st2 = new StringTokenizer(email, "@");
		String email1 = st2.nextToken();
		String email2 = st2.nextToken();					
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src ="js/join.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.tb td{
	padding-bottom: 25px;
}
</style>
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
	<div align="center" class="content">
	<%@ include file="include/header.jsp" %>
	<div class="col-md-2">
	<%@ include file="include/mypageSidebar.jsp" %>	
	</div>
	<div class="col-md-1"></div>
	 <div class="col-md-9" align="left">
		<form method="post" action="<%=request.getContextPath()%>/S_MememberModifyOk.do" name="frm">
			<br /><br />
			<table>
				<c:set var="dto" value="${smemprivacy }" ></c:set>				
				<tr>
					<th>아이디</th>
					<td><input type="text" value="${dto.getS_id() }" name="s_id" readonly/></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="spwd" id="pwd1" onkeyup="pwdCheck()"/></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" id="pwd2" onkeyup="pwdCheck()"/><br />
						<span id="pwdCheck"></span>
					</td>
				</tr>				
				<tr>
					<th>이름</th>
					<td><input type="text" value="${dto.getSname() }" name="sname"/></td>
				</tr>				
				<tr>
					<th>연락처</th>
					<td>
						<select name="sphone1">
							<option value="010" <c:if test="${dto.getSphone().substring(0,3)=='010' }">selected</c:if>>010</option>
							<option value="070" <c:if test="${dto.getSphone().substring(0,3)=='070' }">selected</c:if>>070</option>
							<option value="02"  <c:if test="${dto.getSphone().substring(0,2)=='02' }">selected</c:if>>02</option>
							<option value="031" <c:if test="${dto.getSphone().substring(0,3)=='031' }">selected</c:if>>031</option>
							<option value="032" <c:if test="${dto.getSphone().substring(0,3)=='032' }">selected</c:if>>032</option>
							<option value="033" <c:if test="${dto.getSphone().substring(0,3)=='033' }">selected</c:if>>033</option>
							<option value="041" <c:if test="${dto.getSphone().substring(0,3)=='041' }">selected</c:if>>041</option>
							<option value="042" <c:if test="${dto.getSphone().substring(0,3)=='042' }">selected</c:if>>042</option>
							<option value="043" <c:if test="${dto.getSphone().substring(0,3)=='043' }">selected</c:if>>043</option>
							<option value="044" <c:if test="${dto.getSphone().substring(0,3)=='044' }">selected</c:if>>044</option>
							<option value="051" <c:if test="${dto.getSphone().substring(0,3)=='051' }">selected</c:if>>051</option>
							<option value="052" <c:if test="${dto.getSphone().substring(0,3)=='052' }">selected</c:if>>052</option>
							<option value="053" <c:if test="${dto.getSphone().substring(0,3)=='053' }">selected</c:if>>053</option>
							<option value="054" <c:if test="${dto.getSphone().substring(0,3)=='054' }">selected</c:if>>054</option>
							<option value="055" <c:if test="${dto.getSphone().substring(0,3)=='055' }">selected</c:if>>055</option>
							<option value="061" <c:if test="${dto.getSphone().substring(0,3)=='061' }">selected</c:if>>061</option>
							<option value="062" <c:if test="${dto.getSphone().substring(0,3)=='062' }">selected</c:if>>062</option>
							<option value="063" <c:if test="${dto.getSphone().substring(0,3)=='063' }">selected</c:if>>063</option>
							<option value="064" <c:if test="${dto.getSphone().substring(0,3)=='064' }">selected</c:if>>064</option>
						</select>
						- <input type="tel" size="4" name="sphone2" value="<%=phone2%>">
						- <input type="tel" size="4" name="sphone3" value="<%=phone3%>">
					</td>								
				</tr>				
				<tr>
					<th>주소</th>
					<td><input type="text" value="${dto.getSadd() }" name="sadd" size="50"/></td>
				</tr>
				<c:set var="email2" value="<%=email2%>"/>
				<tr>
					<th>이메일 주소</th>
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
					<th>포인트</th>
					<td><input type="text" value="${dto.getSpoint() }" readonly /></td>
				</tr>
				<tr>
					<th><br />추가 배송지</th>
					<td></td>
				</tr>
				<tr>
					<td align="center">배송지1</td>
					<td><input type="text" value="${dto.getSadd1() }" size="50" name="sadd1"/></td>
				</tr>
				<tr>
					<td align="center">배송지2</td>
					<td><input type="text" value="${dto.getSadd2() }" size="50" name="sadd2"/></td>
				</tr>
				<tr>
					<td align="center">배송지3</td>
					<td><input type="text" value="${dto.getSadd3() }" size="50" name="sadd3"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<br /><br />
					<input type="submit" value="수정하기">					
					<input type="button" value="탈퇴하기" onclick="location.href='<%=request.getContextPath()%>/withdraw.do'">
					
					</td>
				</tr>
			</table>
		</form>	
		</div>
	</div>
	<%@ include file="include/footer.jsp" %>
</body>
</html>
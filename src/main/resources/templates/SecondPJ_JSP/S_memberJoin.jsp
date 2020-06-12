<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	tr {
		text-align:left;
	}
</style>
<script src="../js/join.js"></script>
<script src="../js/jquery-3.4.1.js"></script>
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
	<br /><br />
	<a href="main.do"><img alt="logo" src="../images/MGlogo.png"></a>
	<br /><br /><br /><br /><br />
	<form name="frm" method="post" action="<%=request.getContextPath() %>/smemberJoin.do" onsubmit="tot_Check()">
		<table>
			<tr>
				<th>아이디</th>				
			</tr>
			<tr>
				<td>
				<input type="text" name="s_id" id="s_id" />
				<input type="button" onclick="sidCheck()" value="중복확인"/>
				<br /><span id="idcheck"></span>
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
			</tr>
			<tr>
				<td>
				<input type="password" name="s_pwd" id="pwd1" onkeyup="pwdCheck()"/>
				<br /><span id="pwdCheck"></span>
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>				
			</tr>
			<tr>
				<td><input type="password" id="pwd2" onkeyup="pwdCheck()"/></td>
			</tr>
			<tr>
				<th>이름</th>
			</tr>
			<tr>
				<td><input type="text" name="sname" id="name"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
			</tr>
			<tr>
				<td>
					<select name="syear">
						<option value="">년도</option>
						<c:forEach begin="1970" end="2020" step="1" var="i">						
						<option value="${i }">${i }년</option>						
						</c:forEach>
					</select>
					&nbsp;
					<select name="smonth">
						<option value="">월</option>
						<c:forEach begin="1" end="12" step="1" var="j">						
						<option value="${j }">${j }월</option>						
						</c:forEach>				
					</select>
					&nbsp;
					<select name="sday">
						<option value="">일</option>
						<c:forEach begin="1" end="31" step="1" var="k">						
						<option value="${k }">${k }일</option>						
						</c:forEach>								
					</select>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
			</tr>
			<tr>
				<td>
				<select name="sphone1">
					<option value="">선택</option>
					<option value="010">010</option>
					<option value="070">070</option>
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="032">032</option>
					<option value="033">033</option>
					<option value="041">041</option>
					<option value="042">042</option>
					<option value="043">043</option>
					<option value="044">044</option>
					<option value="051">051</option>
					<option value="052">052</option>
					<option value="053">053</option>
					<option value="054">054</option>
					<option value="055">055</option>
					<option value="061">061</option>
					<option value="062">062</option>
					<option value="063">063</option>
					<option value="064">064</option>
				</select>
				- <input type="tel" size="4" name="sphone2">
				- <input type="tel" size="4" name="sphone3">
				</td>				
			</tr>
			<tr>
				<th>주소</th>
			</tr>			
			<tr>
				<td>
					<input type="text" size="50" name="sadd" id="addr"/>								
				</td>
			</tr>
			<tr>
				<th>이메일 주소</th>
			</tr>
			<tr>
				<td>
					<input type="text" name="email1" />@
					<input type="text" name="email2" id="email" />
					<select id="emailSelect" name="emailSelect">
						<option value="">선택</option>
						<option value="naver.com" id="naver">naver.com</option>
						<option value="gmail.com" id="gmail">gmail.com</option>
						<option value="hanmail.net" id="hanmail">hanmail.net</option>
						<option value="nate.com" id="nate">nate.com</option>
						<option value="" id="write" selected>직접입력</option>						
				</select>	
				</td>
			</tr>
			<tr>
				<th>추천인 아이디</th>
			</tr>
			<tr>
				<td>
					<input type="text" name="r_member" id="r_id"/>
					<input type="button" value="확인" onclick="ridCheck()"/>
				</td>
			</tr>
			<tr>
				<th>포인트</th>
			</tr>
			<tr>
				<td>
					<input type="text" value="0" name="spoint" id="spoint" readOnly/>
				</td>
			</tr>			
		</table>
		<br />
		<input type="submit" value="회원가입" />
		<input type="reset" value="다시 작성" />
		<input type="button" value="취소" onclick="history.back()"/>
	</form>
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
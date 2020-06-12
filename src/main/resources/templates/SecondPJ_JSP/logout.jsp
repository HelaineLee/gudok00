<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 현재 로그인된 사용자의 모든 세션 정보 만료 要
	session.invalidate(); 	// 모든 세션 속성을 만료시키는 메서드
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
		location.href="main.do";
	</script>
	
</body>
</html>
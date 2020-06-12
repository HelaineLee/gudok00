<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="../css/bootstrap_3-3-2.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">

nav, section {
	float: left;
}
section {
	margin-left: 100px;
}
th, td{
	text-align: center;
}
</style>
<script type="text/javascript">
	function selectChk(){
		if($("input:checkbox[name=select]:checked").length>1){
			alert("한 번에 하나의 상품만 삭제 가능합니다.");
			}
	}
</script>
</head>
<body>
	
	<div align="center"  class="content">
	<%@ include file="../include/header.jsp" %>
	 <div class="col-md-2">
	<%@ include file="../include/mypageSidebar.jsp" %>
	</div>
	<div class="col-md-1"></div>
	<div class="col-md-7">
	<br /><br />
	<section>
	  <form method="post" action="productDelete.do" onsubmit="selectChk()">
	  <div></div>
	   <table width="700">
		  <tr>
		  	<th></th> <th>상품명</th> <th>카테고리</th> <th>가격</th> <th>최초등록일</th> 
		  	<th>품절여부</th> <th>삭제여부</th> <th>최종수정일</th>		  	
		  </tr>
		<c:set var="list" value="${productList }"/>			
		<c:if test="${!empty list }">
		<c:forEach items="${list }" var="dto">
		  <tr id="content">
		  	<td><input type="checkbox" name="select" value="${dto.getP_id() }"/></td>
		  	<td><a href="productCont.do?no=${dto.getP_id() }">${dto.getPname() }</a></td>
		  	<td>
		  		<c:if test="${dto.getCnum()==10 }">모바일</c:if>
		  		<c:if test="${dto.getCnum()==11 }">식물</c:if>
		  		<c:if test="${dto.getCnum()==12 }">생활필수품</c:if>
		  		<c:if test="${dto.getCnum()==13 }">피부 및 건강</c:if>
		  		<c:if test="${dto.getCnum()==14 }">아이웨어</c:if>
		  	</td>
		  	<td>${dto.getPrice() }원</td>
		  	<td>${dto.getPrdate() }</td>
		  	<td>
		  		<c:if test="${dto.getPsoldout()==1 }">X</c:if>
		  		<c:if test="${dto.getPsoldout()==0 }"><font color="gray"><i>품절</i></font></c:if>
		  	</td>
		  	<td id="deleted">
		  		<c:if test="${dto.getPdelete()==1 }">X</c:if>
		  		<c:if test="${dto.getPdelete()==0 }"><font color="gray"><i>삭제 요청중</i></font></c:if>
		  	</td>
		  	<td>${dto.getPddate() }</td>
		  </tr>
		  </c:forEach>
		  <tr>
		  	<td colspan="7" align="center"><br /><font color="lightgray"><i>※상품 상세 내역을 조회하시거나 수정하시려면 제목을 클릭해 주세요.</i></font></td>
		  </tr>		
		</c:if>
		<c:if test="${empty list }">
		  <tr>
		  	<td colspan="7">아직 등록된 상품이 없습니다. 상품을 등록해 주세요.</td>
		  </tr>
		</c:if>
		</table>
		<br /><button onclick="location.href='productAdd.do'">새 상품 등록</button>
		<input type="submit" value="삭제 요청" />
		</form>
		<br /><br />
		<c:if test="${allPage}>1">
		<div>
			<ul class="pagination">
				<c:if test="${page > block }">
					<li class="paginate_button previous"> 
					  <a href="board_list.do?page=1">◀◀</a></li>
					<li><a href="board_list.do?page=${startBlock-1 }">◀</a></li>
				</c:if>
				
				<c:forEach begin="${startBlock }" end="${endBlock }" var="i">
				<c:if test="${i == page }">
					<li class="active"><a href="board_list.do?page=${i }">${i }</a></li>
				</c:if>
				<c:if test="${i != page }">
					<li><a href="board_list.do?page=${i }">${i }</a></li>
				</c:if>
				</c:forEach>
				
				<c:if test="${endBlock < allPage }">
					<li><a href="board_list.do?page=${endBlock+1 }">▶</a></li>
					<li class="paginate_button next"> 
					  <a href="board_list.do?page=${allPage }">▶▶</a></li>					
				</c:if>				
			</ul>
		</div>
		</c:if>
	</section>	
	</div>
	
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>
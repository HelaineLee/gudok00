<%@page import="com.gudok.model.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   ReviewDTO rdto = (ReviewDTO) request.getAttribute("rdto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.revT{
	font-size: 14pt;
	font-weight: bold;
}
.re{
	font-style: italic;
}
.star td{
	font-size: 12pt;
}
.ptext td{
	font-size: 14pt;
	font-family: 나눔스퀘어 Bold;
}

#image {
	padding: 0 40px;
}
</style>

</head>
<body>
    <div align="center">
      <%@ include file="include/header.jsp"%>
      <br /><br /><br /><br />
     <div class="content">
      <form method="post"
         action="<%=request.getContextPath()%>/cart_add.do?sid=${s_id}" class="form-inline ptext">
         <c:set var="dto" value="${dto }" />
         <input type="hidden" value="${dto.getCnum() }" name="cnum" /> <input
            type="hidden" value="${dto.getP_id() }" name="p_id" /> <input
            type="hidden" value="${dto.getPrice() }" name="price" /> <input
            type="hidden" value="${dto.getB_id() }" name="b_id" /> <input
            type="hidden" value="${dto.getBname() }" name="bname" /> <input
            type="hidden" value="${dto.getPname() }" name="pname" />
         <table>
            <tr>
            	<td rowspan="6" id="image"><img src="./images/${dto.getPimage() }"></td>
               <td><strong><font face="나눔스퀘어라운드" >카테고리</font></strong> | <c:if test="${dto.getCnum()==10 }">모바일</c:if> <c:if
                     test="${dto.getCnum()==11 }">식물</c:if> <c:if
                     test="${dto.getCnum()==12 }">생활필수품</c:if> <c:if
                     test="${dto.getCnum()==13 }">피부 및 건강</c:if> <c:if
                     test="${dto.getCnum()==14 }">아이웨어</c:if></td>
            </tr>
            <tr>
               <td><strong><font face="나눔스퀘어라운드" >제품명</font></strong> | <font face="나눔스퀘어라운드" >${dto.getPname() }</font></td>
            </tr>
            <tr>
               <td><strong><font face="나눔스퀘어라운드" >브랜드</font></strong> | <font face="나눔스퀘어라운드" >${dto.getBname() }</font></td>
            </tr>
            <tr>
               <td><strong><font face="나눔스퀘어라운드" >가격</font></strong> | <font face="나눔스퀘어라운드" >${dto.getPrice() }원</font></td>
            </tr>
            <tr>
            <td><hr /></td>
            </tr>
            <tr>
               <td align="right"><select name="payMonth" class="form-control">
                     <option value="1">1</option>
                     <option value="3">3</option>
                     <option value="6">6</option>
                     <option value="12">12</option>
               </select><font face="나눔스퀘어라운드" >개월 동안</font> &nbsp;&nbsp;<input type="number" min="1" max="20" value="1"
                  name="quantity" class="form-control"/><font face="나눔스퀘어라운드" >개씩 구독</font> &nbsp;&nbsp;<input type="submit" class="btn btn-info" value="장바구니 추가" /></td>
            </tr>
           
            <tr>
               <td align="center" colspan="2"><br />
               <br /><font face="나눔스퀘어라운드" >${dto.getPstory() }</font><br />
               <br />
               <br /> <c:if test="${dto.getPcontents1() != null}">
                     <img src="./images/${dto.getPcontents1() }" />
                     <br />
                  </c:if> <c:if test="${dto.getPcontents2() != null}">
                     <img src="./images/${dto.getPcontents2() }" />
                     <br />
                  </c:if> <c:if test="${dto.getPcontents3() != null}">
                     <img src="./images/${dto.getPcontents3() }" />
                  </c:if></td>
            </tr>
         </table>
      </form>
      <br /> <br />
      
      
      <%-- 리뷰 시작 --%>
      
      <%
         if (rdto.getsId() != null) {
      %>
      <hr width="70%"/>
      <table>
	      <tr>
	      	<td align="center" colspan="3"><h2 class="re">REVIEW</h2></td>
	      </tr>
	      <tr>
	     	 <td colspan="3">&nbsp;</td>
	      </tr>
         <tr>
            <td>작성자 : <%=rdto.getsId()%>님</td>
            <td align="center">작성일자 : <%=rdto.getrDate().substring(0, 10)%></td>
          	<td align="right">구독 기간 : <%=rdto.getSubMonth()%>개월</td>
         </tr>
         <tr>
	     	 <td colspan="3">&nbsp;</td>
	      </tr>
        <tr class="star">
           <th colspan="2" class="revT"> 제목 : <%=rdto.getrTitle()%></th>
            <%
               if (rdto.getScore() == 5) {
            %>
            <td align="right">별점 : ★★★★★</td>
            <%
               } else if (rdto.getScore() == 4) {
            %>
            <td align="right">별점 : ★★★★</td>
            <%
               } else if (rdto.getScore() == 3) {
            %>
            <td align="right">별점 : ★★★</td>
            <%
               } else if (rdto.getScore() == 2) {
            %>
            <td align="right">별점 : ★★</td>
            <%
               } else {
            %>
            <td align="right">별점 : ★</td>
            <%
               }
            %>
         </tr>
         <tr>
            <td colspan="3" align="center"><textarea class="form-control" rows="6" cols="70"
                  readonly><%=rdto.getUserCmt()%></textarea></td>
         </tr>
         <%
            if (rdto.getReFile() != null) {
         %>
         <tr>
            <td colspan="3"><img alt="<%=rdto.getReFile()%>"
               src="./review/<%=rdto.getReFile()%>"></td>
         </tr>
         <%
            }
         %>
      </table>
      <hr width="70%"/>
      <%
         }
      %>
      <br /> <br /> <input type="button" value="문의하기"  class="btn btn-info"
         onclick="location.href='qna_write.do?sid=${s_id }&bname=${dto.getBname()}'">
      <br /> <br />
   </div>
   </div>
   <%@ include file="include/footer.jsp" %>
</body>
</html>
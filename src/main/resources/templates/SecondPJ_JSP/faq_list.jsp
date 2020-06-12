<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월간 구독</title>
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">

function showDiv(trc){
   ($('#'+trc).css("display") == "block") ? $('#'+trc).css("display","none") : $('#'+trc).css("display","block") ;
   
}
</script>
<style type="text/css">
ul{
	list-style:none;
}

.answer{
	background-color: #F2F2F2;
	width: 900px;
	text-align: left;
	padding: 20px;
}

.question{
	border: none;
	border-bottom: 1px dotted;
	padding: 10px;
	width: 900px;
}

#wrapper{
	padding-left: 200px;
}
</style>
</head>
<body>
      <div align="center">
      <%@ include file="../include/header.jsp" %>
      <%@ include file="../include/customerSupportSidebar.jsp" %>
      <section id="wrapper">
                  <h3>FAQ</h3>
             
             <br  /><br  />
             
                <!-- FaqListAction에서 가지고 온 값에 저장공간 및 변수 부여  -->
                <c:set  var="faqlist" value="${faqList }" />
                
                 <c:if test = "${!empty faqlist }">
                <c:forEach items="${faqlist }" var="dto">
                
             
                    <!-- faq 제목 부분 -->
                   <dt class="faq_title">
                       <ul>
                           <li class="li_faq">
                               <dl>                                   
                                   <dd onclick="showDiv(${dto.getFaqnum() })" class="question">
                                   	<strong>Q. </strong>${dto.getFaq_q() } 
                                   </dd>
                               </dl>
                             </li>
                         </ul>    
                      </dt>    
                         
                      <!-- faq 내용 부분 -->
                        <dd id="${dto.getFaqnum() }"  style="display:none"> 
                            <ul>
                                <li class="li_faq">
                                   <dl class="answer">                                     
                                      <dd><strong>A. </strong>${dto.getFaq_a() }  </dd>
                                    </dl>
                                  </li>
                            </ul>
                          </dd> 
                </c:forEach>
                </c:if>
                
                <c:if test="${empty faqlist }" >
                <tr>
                   <td colspan="2" align="center">
                      <h3>검색된 레코드가 없습니다.</h3>
                   </td>
                </tr>
                </c:if>          
         </section>
         </div>
         

</body>
</html>
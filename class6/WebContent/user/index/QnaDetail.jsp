<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../css/bbsdetailstyles.css" rel="stylesheet">
<jsp:include page="${realpath }/layout/Header.jsp" />
<script type="text/javascript">
$(document).ready(function(){
	
		var idx=$('span[name="no"]').text();
	
	
		$('button[name="edit"]').click(function(){
			location.href="../user/QnaEdit.com?idx="+idx; 
		});
		
		$('button[name="del"]').click(function(){
  		if(confirm('해당페이지를 삭제 하시겠습니까?')){
		alert('삭제하기로함');
			$.post('../user/QnaDel.com',{'idx':idx},function(){
				location.href='../user/QnaList.com';
			});
  		};
		});
	
		$('button[name="back"]').click(function(){
		location.href='../user/QnaList.com';
		});
});
</script>
			<div class="main" style="overflow: auto">
					<!--  bbs detail list -->
				<br>
				
				<div class="title">
					<span class="maintitle">상담 게시판</span>
					<br/>
					<span class="subtitle">비트캠프 구로지점의 강좌에 대한 상담을 받아 보실 수 있습니다.</span>
				</div>
				<div class="clear"></div>
				<div class="grid_12 content">					
					<c:forEach items="dto" var="list">
					<div class="bbstitle">
						<span style="width: 320px;">${dto.qnaName }</span>
	                       <span></span>
						<span name="w">${dto.qnaW }</span>
					</div>
					<div class="date">
						bbsNo : 
						<span name="no" class="detailno">${dto.qnaNo }</span>
						 / 
						<span class="viewcnt">조회수 : ${dto.qnaView } / </span>
						<span name="writeDate" class="writeDate">${dto.qnaIpD }</span>
					</div>					
					<div class="detailcontent">	
	                    <br><br>
						<span>${dto.qnaCon }</span>
	                    <br><br><br><br><br><br><br><br><br>
					</div>
					<br>
					</c:forEach>
					<div class="btndiv">
						<button name="edit" class="edit">
						수정</button>
						<button name="del" class="del">
						삭제</button>
						<button name="back" class="back1">
						목록</button>
					</div>
				</div>
				<% int bbscnt = 0; %>
				<br><br><br>
				<table>
					<tr>
						<th style="width: 10%;">No.</th>
						<th style="width: 50%;">제목</th>
						<th style="width: 15%;">이름</th>
						<th style="width: 15%;">작성일시</th>
						<th style="width: 10%;">조회수</th>
					</tr>
					<c:forEach items="${List }" var="list" varStatus="status">
					<tr>
						<td><a href="../user/BbsDetail.com?idx=${list.qnaNo }">
						${list.qnaNo }</a></td>							
						<td><a href="../user/BbsDetail.com?idx=${list.qnaNo }">${list.qnaName}</a></td>
						<td><a href="../user/BbsDetail.com?idx=${list.qnaNo }">${list.qnaW}</a></td>
						<td><a href="../user/BbsDetail.com?idx=${list.qnaNo }">${list.qnaIpD }</a></td>
						<td><a href="../user/BbsDetail.com?idx=${list.qnaNo }">${list.qnaView }</a></td>
					</tr><%bbscnt++; %>
					</c:forEach>
					<%
						if(bbscnt != 10){
							for(int i = 0; i < 10-bbscnt; i++){
								out.print("<tr>");
								out.print("<td></td><td></td><td></td><td></td><td></td>");
								out.print("</td>");
							}
						}
					%>
					<tr><td></td></tr>
					<tr>
						<td colspan="1">
							
						</td>
						<td colspan="4">
							<div class="search">
					            <form name="serach">
					            <select name="keyField">
					                <option value="bbsNo">글번호</option>
					                <option value="bbsName">글제목</option>
					                <option value="bbsW">글쓴이</option>  
					            </select>
					            <input type="text" name="keyWord" />
					            <input type="button" value="Search" onclick="searchCheck(form)" class="searchbtn" />
					            </form>
						    </div>
						</td>
					</tr>
				</table>			
			</div>
		<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
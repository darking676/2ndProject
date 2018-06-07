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
		if($('span[name="w"]').text()==$('label[name="w"]').text()){
			$('button[name="edit"]').css("visibility","visible");
			
			$('button[name="del"]').css("visibility","visible");
		}else{
			$('button[name="back"]').css("margin-right","236px");
		}
	
	
		var idx=$('span[name="no"]').text();
	
	
		$('button[name="edit"]').click(function(){
			location.href="../user/BbsEdit.com?idx="+idx; 
		});
		
		$('button[name="del"]').click(function(){
  		if(confirm('해당페이지를 삭제 하시겠습니까?')){
		alert('삭제하기로함');
			$.post('../user/BbsDel.com',{'idx':idx},function(){
				location.href='../user/BbsList.com';
			});
  		};
		});
	
		$('button[name="back"]').click(function(){
		location.href='../user/BbsList.com';
		});
});
</script>	
			<div class="main" style="overflow: auto">
					<!--  bbs detail list -->
				<br>
				
				<div class="title">
					<span class="maintitle">공지사항</span>
					<br/>
					<span class="subtitle">비트캠프 구로지점의 강좌 오픈 및 종강 소식을 확인 하실 수 있습니다.</span>
				</div>
				<div class="clear"></div>
				<div class="grid_12 content">					
					<c:forEach items="dto" var="list">
					<div class="bbstitle">
						<span>${dto.bbsName }</span>
	                       <span></span>
						<span name="w">${dto.bbsW }</span>
					</div>
					<div class="date">
						bbsNo : 
						<span name="no" class="detailno">${dto.bbsNo }</span>
						 / 
						<span class="viewcnt">조회수 : ${dto.bbsView } / </span>
						<span name="writeDate" class="writeDate">${dto.bbsDate }</span>
						
					</div>					
					
					<div class="detailcontent">	
	                    <br><br>
						<span>${dto.bbsCon }</span>
	                    <br><br><br><br><br><br><br><br><br>
					</div>
					<br>
					</c:forEach>
					<div class="btndiv">
						<button name="edit" class="edit" style="visibility: hidden;">
						수정</button>
						<button name="del" class="del"  style="visibility: hidden;">
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
						<td><a href="../user/BbsDetail.com?idx=${list.bbsNo }">
						${list.bbsNo }</a></td>							
						<td><a href="../user/BbsDetail.com?idx=${list.bbsNo }">${list.bbsName}</a></td>
						<td><a href="../user/BbsDetail.com?idx=${list.bbsNo }">${list.bbsW}</a></td>
						<td><a href="../user/BbsDetail.com?idx=${list.bbsNo }">${list.bbsDate }</a></td>
						<td><a href="../user/BbsDetail.com?idx=${list.bbsNo }">${list.bbsView }</a></td>
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
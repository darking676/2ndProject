<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../../css/bbsdetailstyles.css?ver=1" rel="stylesheet">
	
<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
<script type="text/javascript">
$(document).ready(function(){
	
		var idx=$('span[name="no"]').text();
		var memID = sessionStorage.getItem("sessionID");
		
		$('button[name="edit"]').click(function(){
			location.href="../../admin/bbs/BbsEdit.com?idx="+idx; 
		});
		
		$('button[name="del"]').click(function(){
  		if(confirm('해당페이지를 삭제 하시겠습니까?')){
		alert('삭제하기로함');
			$.post('../user/BbsDel.com',{'idx':idx},function(){
				location.href='../../admin/bbs/BbsList.com';
			});
  		};
		});
	
		$('button[name="back"]').click(function(){
		location.href='../../admin/bbs/BbsList.com';
		});
});
</script>	
<% int bbscnt = 0; 
%>
				<div class="main" style="overflow: auto">
					<!--  bbs detail list -->
				<br>
				<div class="title">
					<span class="maintitle">공지사항</span>
					<br/>
					<span class="subtitle">비회원 방문자들이 확인 가능한 공지사항 입니다.</span>
				</div>
				<div class="clear"></div>
				<div class="grid_12 content">					
					<c:forEach items="dto" var="list">
					<div class="bbstitle">
						<span>${dto.bbsName }</span>
	                       <span></span>
						<span name="W">${dto.bbsW }</span>
					</div>
					<div class="date">
						bbsNo : 
						<span name="no" class="detailno">${dto.bbsNo }</span>
						 / 
						<span class="viewcnt">조회수 : ${dto.bbsView } / </span>
						<span name="writeDate" class="writeDate">${dto.bbsDate }</span>
						
					</div>					
					<c:set var="sessid" value="${dto.bbsW }"/>
					<div class="detailcontent">	
	                    <br><br>
						<span>${dto.bbsCon }</span>
	                    <br><br><br><br><br><br><br><br><br>
					</div>
					<br>
					</c:forEach>
					<%
						String sId = (String) session.getAttribute("sessionID");
						String sessid = (String) pageContext.getAttribute("sessid");
					%>
					<div class="btndiv">
						<button name="edit" class="edit" style="visibility: hidden;
						<%if(sId.equals(sessid)){%> visibility: visible;<%}%>">
						수정</button>
						<button name="del" class="del"  style="visibility: hidden
						<%if(sId.equals(sessid)){%> visibility: visible;<%}%>">
						삭제</button>
						<button name="back" class="back1">
						목록</button>
					</div>
				</div>
				
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
							<a class="a"  href="../../admin/bbs/BbsAdd.com"><button class="advice" style="float: left; width: 90px; height: 40px;">공지 입력</button></a>
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
		<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
	</body>
</html>
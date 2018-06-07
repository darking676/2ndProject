<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
		<jsp:include page="${realpath }/layout/Header.jsp" />
		<link href="../css/bbsstyles.css" rel="stylesheet">
		<script type="text/javascript">
		
		//검색창
	    function searchCheck(form){
	        //검색
	        if($('input[name="keyWord"]').val() ==""){
	            alert("검색 단어를 입력하세요.");
	            $('input[name="keyWord"]').focus();
	            return;
	        }
	        form.submit();      
	    }
		
		//검색 뒤로가기
	    function back(form){
	    	location.href='../user/BbsList.com';
			
		}
		</script>
		<% int bbscnt = 0; %>
			<div class="main" style="overflow: auto" >
				<!-- main contents Start -->
				<br>
				<div class="title">
					<span class="maintitle">공지사항</span>
					<br/>
					<span class="subtitle">비트캠프 구로지점의 강좌 오픈 및 종강 소식을 확인 하실 수 있습니다.</span>
				</div>
				<br>
				<br>
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
			
				<!-- main bbs end -->
			</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.user.model.DTO.memDTO" %>
<!DOCTYPE html PUBLIC
 "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
		<link href="../../css/bbsstyles.css" rel="stylesheet">
		<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
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
		    	location.href='../../admin/bbs/BbsList.com';
				
			}
		</script>
		<% int bbscnt = 0;
		int listcount=((Integer)request.getAttribute("listcount")).intValue();
		int nowpage=((Integer)request.getAttribute("page")).intValue();
		int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
		int startpage=((Integer)request.getAttribute("startpage")).intValue();
		int endpage=((Integer)request.getAttribute("endpage")).intValue();%>
				<div class="main" style="overflow: auto">
					<!-- main list -->
					<br>
					<div class="title">
					<span class="maintitle">공지사항</span>
					<br/>
					<span class="subtitle" style="margin-top: 10px;">비회원 방문자들이 확인 가능한 공지사항 입니다.</span>
					</div>
				    <br><br>
						<table>
							<tr>
								<th style="width: 10%;">No.</th>
								<th style="width: 50%;">제목</th>
								<th style="width: 15%;">이름</th>
								<th style="width: 15%;">작성일시</th>
								<th style="width: 10%;">조회수</th>
							</tr>
							<c:forEach items="${List }" var="list">
							<tr>
								<td><a href="../../admin/bbs/BbsDetail.com?idx=${list.bbsNo }">
								${list.bbsNo }</a></td>							
								<td><a href="../../admin/bbs/BbsDetail.com?idx=${list.bbsNo }">${list.bbsName}</a></td>
								<td><a href="../../admin/bbs/BbsDetail.com?idx=${list.bbsNo }">${list.bbsW}</a></td>
								<td><a href="../../admin/bbs/BbsDetail.com?idx=${list.bbsNo }">${list.bbsDate }</a></td>
								<td><a href="../../admin/bbs/BbsDetail.com?idx=${list.bbsNo }">${list.bbsView }</a></td>
							</tr>
							<% bbscnt++; %>
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
							<tr style="text-align: center;">
					        <td colspan="5">
					      		<%if(nowpage<=1){ %>
								<span class="prepage">
								<a href="#">이전</a>
								</span>
								<%}else{ %>
								<span class="prepage">
								<a href="../admin/BbsList.com?page=<%=nowpage-1 %>">이전</a>
								</span>
								<%} %>
								<%for(int a=startpage;a<=endpage;a++){
									if(a==nowpage){%>
									<span class="numpage"><a href="#"><%=a %></a></span>
									<%}else{ %>
									<span class="numpage"><a class="a" href="./BbsList.com?page=<%=a %>"><%=a %></a></span>
									<%} %>
								<%} %>
								<%if(nowpage>=maxpage){ %>
								<span class="nextpage"><a href="#">다음</a></span>
								<%}else{ %>
								<span class="nextpage">
								<a class="a" href="../admin/BbsList.com?page=<%=nowpage+1 %>">다음</a>
								</span>
								<%} %>
					        </td>
					        </tr>
							<tr>
							<td colspan="2">
									<a class="a"  href="../../admin/bbs/BbsAdd.com"><button class="advice" style="float: left;">공지 입력</button></a>
							</td>
							<td colspan="3">
							<div class="search">
					            <form name="serach">
					            <select name="keyField">
					                <option value="bbsNo">글번호</option>
					                <option value="bbsName">글제목</option>
					                <option value="bbsW">글쓴이</option>  
					            </select>
					            <input type="text" name="keyWord" size="10"/>
					            <input type="button" value="Search" onclick="searchCheck(form)" class="searchbtn" />
					            </form>
						    </div>
							</td>
							</tr>
							</table>					
							<br>
				</div>
				<jsp:include page="${realpath }/layout/Footer_admin.jsp" />
	</body>
</html>
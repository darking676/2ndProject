<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.user.model.DTO.bbsQnaDTO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
		<link href="../css/bbsstyles.css" rel="stylesheet">
		<jsp:include page="${realpath }/layout/Header.jsp" />
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
		    	location.href='../user/QnaList.com';
				
			}
		</script>	
		<% 
		int bbscnt = 0;    
		List articleList = (List) request.getAttribute("List");
		int listcount=((Integer)request.getAttribute("listcount")).intValue();
		int nowpage=((Integer)request.getAttribute("page")).intValue();
		int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
		int startpage=((Integer)request.getAttribute("startpage")).intValue();
		int endpage=((Integer)request.getAttribute("endpage")).intValue();
		%>
				<div class="main" style="overflow: auto">
					<!-- main list -->
					<br>
					<div class="title">
						<span class="maintitle">상담 게시판</span>
						<br/>
						<span class="subtitle">비트캠프 구로지점의 강좌에 대한 상담을 받아 보실 수 있습니다.</span>
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
							<%
				                System.out.println("article -- "+articleList.size());
				                for(int i = 0; i < articleList.size(); i++){
				                    bbsQnaDTO list = (bbsQnaDTO) articleList.get(i);
				                    bbscnt++;
				            %>
							<tr>
								<td><a href="../user/QnaPw.com?idx=<%=list.getQnaNo()%>">
								<%=list.getQnaNo()%></a></td>							
								<td><a href="../user/QnaPw.com?idx=<%=list.getQnaNo()%>"><%=list.getQnaName()%></a></td>
								<td><a href="../user/QnaPw.com?idx=<%=list.getQnaNo()%>"><%=list.getQnaW()%></a></td>
								<td><a href="../user/QnaPw.com?idx=<%=list.getQnaNo()%>"><%=list.getQnaIpD()%></a></td>
								<td><a href="../user/QnaPw.com?idx=<%=list.getQnaNo()%>"><%=list.getQnaView()%></a></td>
							
							</tr>
							<%}
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
								<a href="./QnaList.com?page=<%=nowpage-1 %>">이전</a>
								</span>
								<%} %>
								<%for(int a=startpage;a<=endpage;a++){
									if(a==nowpage){%>
									<span class="numpage"><a href="#"><%=a %></a></span>
									<%}else{ %>
									<span class="numpage"><a class="a" href="./QnaList.com?page=<%=a %>"><%=a %></a></span>
									<%} %>
								<%} %>
								<%if(nowpage>=maxpage){ %>
								<span class="nextpage"><a href="#">다음</a></span>
								<%}else{ %>
								<span class="nextpage">
								<a class="a" href="./QnaList.com?page=<%=nowpage+1 %>">다음</a>
								</span>
								<%} %>
					        </td>
					        </tr>
							<tr>
								<td colspan="2">
									<a class="a"  href="../user/QnaAdd.com"><button class="advice" style="float: left;">상담하기</button></a>
								</td>
								<td colspan="3"  width="200px">
									<div class="search">
							           <form name="serach">
							            <select name="keyField">
							               <option value="bbsQnaNo">글번호</option>
							               <option value="bbsQnaName">글제목</option>
							               <option value="bbsQnaW">글쓴이</option>  
							           </select>
							           <input type="text" name="keyWord" size="10"/>
							           <input type="button" value="Search" onclick="searchCheck(form)" class="searchbtn" />
							           </form>
								    </div>
								</td>
							</tr>
						</table>					
						</div>
				</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
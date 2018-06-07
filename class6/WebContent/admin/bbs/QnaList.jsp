<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<style type="text/css">
								
				*{
					font-family: 'Nanum Gothic', sans-serif;
				}
				
				table,th,td{
					border: 1px solid gray;
				}
				
				table {
					width : 80%;
					margin: 10px auto 50px auto;
					border-collapse: collapse;
					/* border: 1px soid gray; */
				}
				
				th{
					background-color: #cccccc;
				}
				
				tr:hover{
					background-color: #e7eae5;
				}
		
				td {
					text-align: center;
				}
			
				td>a{
					display: block;
					color:gray;
					text-decoration: none;
				}
			.btn {
			    border: none;
			    color: white;
			    padding: 14px 28px;
			    font-size: 16px;
			    cursor: pointer;
			}
		
			.btn {background-color: #2196F3;} /* Blue */
			.btn:hover {background: #0b7dda;}
			
			.search{
				   width: 321px;
				   margin: 20px auto;
			}
		</style>
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
				<div class="main" style="overflow: auto">
					<!-- main list -->
					<h2>상담 게시판</h2>
					<div class="search">
			            <form name="serach">
			            <select name="keyField">
			                <option value="bbsQnaNo">글번호</option>
			                <option value="bbsQnaName">글제목</option>
			                <option value="bbsQnaW">글쓴이</option>  
			            </select>
			            <input type="text" name="keyWord" />
			            <input type="button" value="검색" onclick="searchCheck(form)" style="background-color:#2196F3; border: none; color: white; padding: 8px; cursor: pointer;" />
			            <input type="button" value="뒤로" onclick="back(form)" style="background-color:#2196F3; border: none; color: white; padding: 8px; cursor: pointer;" />
			            </form>
				    </div>
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
								<td><a href="../user/QnaDetail.com?idx=${list.qnaNo }">
								${list.qnaNo }</a></td>							
								<td><a href="../user/QnaDetail.com?idx=${list.qnaNo }">${list.qnaName}</a></td>
								<td><a href="../user/QnaDetail.com?idx=${list.qnaNo }">${list.qnaW}</a></td>
								<td><a href="../user/QnaDetail.com?idx=${list.qnaNo }">${list.qnaIpD }</a></td>
								<td><a href="../user/QnaDetail.com?idx=${list.qnaNo }">${list.qnaView }</a></td>
							</tr>
							</c:forEach>
							</table>					
							<div align="center">
								<a href="../user/QnaAdd.com"><button class="btn">상담하기</button></a> 				
							</div>
							<br>
				</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
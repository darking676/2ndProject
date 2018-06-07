<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<style type="text/css">
						
		*{
			font-family: 'Nanum Gothic', sans-serif;
		}
	.content>div{
		width: 80%;	
		border-bottom: 1px solid gray;
		margin: 0px auto;
	}
	.content>div:last-child{
		margin-bottom: 50px;
		border-bottom: 0px solid gray;
		text-align: center;
		
	}
	.content>div>span{
		display: inline-block;
		
	}
	.content>div>span:first-child{
		width: 30%;
		text-align: center;
		background-color: #d9dadb;
	}
	.err{
		color: red;
		font-style: italic;
		font-size: 9pt;
	}
	
</style>
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
		location.href='../user/QnaList.com';
		});
});
</script>	
				<div class="main" style="overflow: auto">
					<!--  bbsqna detail list -->
				<div class="clear"></div>
				<div class="grid_12 content">					
				<h1>상담게시판</h1>
				<c:forEach items="dto" var="list">
					<div>
						<span>No </span>
						<span name="no">${dto.qnaNo }</span>
					</div>
					<div>
						<span>비밀번호</span>
						<span name="pw">${dto.qnaPw }</span>
					</div>
					<div>
						<span>글 제 목</span>
						<span>${dto.qnaName }</span>
					</div>
					<div>
						<span>글 내 용</span>
						<span>${dto.qnaCon }</span>
					</div>
					<div>
						<span>글 쓴 이</span>
						<span name="w">${dto.qnaW }</span>
					</div><br>
					</c:forEach>
					<div align="center">
						<button name="edit" style="visibility: hidden; background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
						수정</button>&emsp;&emsp;
						<button name="del" style="visibility: hidden; background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
						삭제</button>&emsp;&emsp;
						<button name="back" style="background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
						뒤로</button>
					</div>	
					
				</div>					
			</div>					
		<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
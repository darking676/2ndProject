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

		
		.content>form{
			width: 80%;
			margin: 10px auto 50px auto;
		}
		
		.content>form>div{
		
		}
		
		.content>form>div>button{
		
			margin: 10px 3px;
			text-align: center;
		}
		
		.content>form>div>label{
			width: 30%;
			text-align: center;
			display: inline-block;
			
		}
		
		.content>form>div>input{
			width: 50%;
			
		}
		
		.err{
			color: red;
			font-style: italic;
			font-size: 9pt;
		}

	
</style>
<jsp:include page="${realpath }/layout/Header_admin_etc.jsp" />
<script type="text/javascript">

	//수정 윈도우 이벤트 
	$(document).ready(function(){
	
		$('button[name="subm"]').click(function(){
			var BbsCon=$('#bbsCon').val();
			var msg ='bbsCon:'+BbsCon+'\n로 수정하시겠습니까?';
			var result = true;
			if(!window.confirm(msg)){
				result=false;
			}
			if(result==true){
				$('form[name="ed"]').submit();
			}
		});
		
		$('button[name="back"]').click(function(){
			location.href="../../admin/bbs/BbsDetail.com?idx="+$('span[id="bbsNo"]').text();
		});
		
	});

	
	//글제목 공백제거,특수문자제거
    function scr(obj) { 
        var val = obj.value;
        var pattern = /[^(가-힣ㄱ-ㅎㅏ-ㅣa-zA-Z0-9)]/gi; 
        if(pattern.test(val)){ 
            obj.value = val.replace(pattern," "); 
        } 
   }
	
</script>	

				<div class="main" style="overflow: auto">
					<!--  bbs detail list -->
				<div class="clear"></div>
				<div class="grid_12 content">					
				<h1>공지사항 수정 페이지</h1>
				<c:set var="list" value="${dto }"></c:set>
				<form name="ed" method="post" action="../../admin/bbs/BbsEdit.com?idx=${list.bbsNo }">
					<div>
						<label for="bbsNo">No. </label>
						<span for="bbsNo" id="bbsNo" >${list.bbsNo }</span>
					</div><br>
					<div>
					   <label for="bbsName">글 제 목 : </label>
					   <input type="text"  value="${list.bbsName }" name="bbsName" id="bbsName" readonly/>
					</div><br>
					
					<div>
					   <label for="bbsCon">글 내 용 : </label>
					   <input type="text"  value="${list.bbsCon }" name="bbsCon" id="bbsCon" style="height:200px" maxlength="100" onkeyup="scr(this);"/>
						<input name="bbsW" type="hidden" value="${list.bbsW }">
					</div>
					
				</form>
				<div align="center">
					<button name="subm" style="background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
					수정</button>
					<button name="back" style="background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
					뒤로</button>
					</div>	
				</div>					
			</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../css/bbsinput.css" rel="stylesheet">
<jsp:include page="${realpath }/layout/Header.jsp" />
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
			window.history.back();
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
				<br>
				
				<div class="title">
					<span class="maintitle">상담 게시판</span>
					<br/>
					<span class="subtitle">비트캠프 구로지점의 강좌에 대한 상담을 받아 보실 수 있습니다.</span>
					
				</div>
				<br>
				<div class="clear"></div>
				<div class="grid_12 content">					
				<c:set var="list" value="${dto }"></c:set>
				<form name="ed" method="post" action="../user/QnaEdit.com?idx=${list.qnaNo }">
				<br>
					<div class="pri">
						<div class="bbsWdiv">
							<span class="bbsWlabel" style="margin-right: 0px;">이름</span>
							<input type="text" name="bbsW" id="bbsW" maxlength="10" value="${list.qnaW }" onkeyup="scr(this);">
						</div>
						<div class="bbspassdiv">
							<span class="bbspasslabel">비밀번호</span>
							<input type="password" name="bbsPw" id="bbsPw" maxlength="10" onkeyup="scr(this);" value="${list.qnaPw }">
						</div>
						<div class="bbsemaildiv">
						    <span class="bbsemaillabel">연락처</span>
						    <input type="text" name="bbsemail" id="bbsemail" class="bbsemail"  placeholder="연락처 / 이메일"  maxlength="10" onkeyup="scr(this);">
						</div>
				  	</div>
					<div>
						<span class="bbsNamelabel">제 목</span>
 						<input type="text" name="bbsName" class="bbsName" id="bbsName" maxlength="14" value="${list.qnaName }" onkeyup="scr(this);">
					</div>
					<br>
					<div class="content">
						<span class="bbsConlabel">내 용<br><br><br><br><br><br><br><br></span>
						<textarea name="bbsCon" class="bbsCon" id="bbsCon" style="height:180px" maxlength="200" >${list.qnaW }</textarea>
					</div>
					<br>
					<div align="center" style="margin-right: 20px;">
					<button name="subm" class="subm">
					수정</button>
					<button name="back" class="back">
					뒤로</button>
					</div>	
				</form>
				</div>					
			</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
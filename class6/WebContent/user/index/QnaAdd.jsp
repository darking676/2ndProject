<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet" type="text/css">
<link href="../css/bbsinput.css" rel="stylesheet">
<style type="text/css">

</style>

	</head>	
	<body>
		<jsp:include page="${realpath }/layout/Header.jsp" />
		<script type="text/javascript">
	//버튼 이벤트
	$(document).ready(function(){
		$('.content>form').submit(function(){
			$('.err').remove();
			var result = true;
			$('form input').each(function(idx,ele){
				if($(ele).val()==''){
					$(this).after('<span class="err">비었음</span>');
					result=false;
				}
			});
			return result;
		});
		
		$('button[name="back"]').click(function(){
			location.href='../user/QnaList.com';
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
				<div class="main content" style="overflow: auto">
					<!-- main list -->
					<br>
					<div class="title">
						<span class="maintitle">상담 게시판</span>
						<br/>
						<span class="subtitle">비트캠프 구로지점의 강좌에 대한 상담을 받아 보실 수 있습니다.</span>
					</div>
					<br>
					<br>
				  <form method="post" action="../user/QnaAdd.com">
				  	<div class="pri">
						<div class="bbsWdiv">
							<span class="bbsWlabel">이름</span>
							<input type="text" name="bbsW" id="bbsW" maxlength="10" onkeyup="scr(this);">
						</div>
						<div class="bbspassdiv">
							<span class="bbspasslabel">비밀번호</span>
							<input type="password" name="bbsPw" id="bbsPw" maxlength="10" onkeyup="scr(this);">
						</div>
						<div class="bbsemaildiv">
						    <span class="bbsemaillabel">연락처</span>
						    <input type="text" name="bbsemail" id="bbsemail" class="bbsemail"  placeholder="연락처 / 이메일"  maxlength="15" onkeyup="scr(this);">
						</div>
				  	</div>
					<div>
						<span class="bbsNamelabel">제 목</span>
 						<input type="text" name="bbsName" class="bbsName" id="bbsName" maxlength="14" onkeyup="scr(this);">
					</div>
					<br>
					<div class="content">
						<span class="bbsConlabel">내 용<br><br><br><br><br><br><br><br></span>
						<textarea name="bbsCon" class="bbsCon" id="bbsCon" style="height:180px" maxlength="200" ></textarea>
					</div>				
					<br>
					<div align="center">
						<button name="back" class="back" style="">
						취소</button>
						<button name="subm" class="subm" style="">
						입력</button>
					</div>				
				  </form>				
				</div>	
				<div class="clear"></div>
		<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
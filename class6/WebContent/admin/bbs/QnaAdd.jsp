<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet" type="text/css">
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
					<h2>상담 입력 페이지</h2>
					<br>
				  <form method="post" action="../user/QnaAdd.com">
					<div>
					  <label for="bbsName">글 제 목</label>
					  <input type="text" name="bbsName" id="bbsName"placeholder="제목을 입력해 주세요" maxlength="10" onkeyup="scr(this);">
					</div>
					<br>
					<div>
					  <label for="bbsW">글 쓴 이</label>
					  <input type="text" name="bbsW" id="bbsW"placeholder="내용을 입력해 주세요" maxlength="10" onkeyup="scr(this);">
					</div>
					<br>
					<div>
						<label for="bbsCon">글 내 용</label>
						<input type="text" name="bbsCon" id="bbsCon"  placeholder="내용을 입력해 주세요" style="height:160px" maxlength="100" onkeyup="scr(this);">
					</div>				
					<br>
					<div>
						<label for="bbsPw">비밀번호</label>
						<input type="password" name="bbsPw" id="bbsPw"  placeholder="비밀번호를 입력해 주세요"  maxlength="10" onkeyup="scr(this);">
					</div>
					<div align="center">
						<button name="subm" style="background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
						입 력</button>
						<button name="back" style="background-color:#2196F3; border: none; color: white; padding: 14px 28px; font-size: 16px; cursor: pointer;">
						뒤 로</button>
					</div>				
				  </form>				
				</div>	
				<div class="clear"></div>
		<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
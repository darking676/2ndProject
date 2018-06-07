<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<jsp:include page="${realpath }/layout/Header.jsp" />
			<script type="text/javascript">
			$(document).ready(function(){
			
				$('button[name="back"]').click(function(){
					location.href="../user/QnaList.com";
				});
				
				$('button[name="subm"]').click(function(){
					var form = document.createElement('form');
					
					var objs,objs1;
			
					objs = document.createElement('input');
			
					objs.setAttribute('type', 'hidden');
			
					objs.setAttribute('name', 'pw');
			
					objs.setAttribute('value', $('input[name="pw"]').val());
					
					objs1 = document.createElement('input');
					
					objs1.setAttribute('type', 'hidden');
			
					objs1.setAttribute('name', 'idx');
			
					objs1.setAttribute('value', $('input[name="idx"]').val());
					
					form.appendChild(objs).appendChild(objs1);
			
					form.setAttribute('method', 'post');
			
					form.setAttribute('action', "../user/QnaPw.com");
			
					document.body.appendChild(form);
			
					form.submit();
				});
			});
		
			</script>	
			<link href="../css/qnapwstyle.css" rel="stylesheet">
				<div class="main" style="overflow: auto" >
					<!-- main contents Start -->
					<br><br><br><br><br><br>
					<div class="passwordform">
					<c:set var="idx" value="${idx }"></c:set>
					<input type="hidden" name="idx" value="${idx }"/>
					<div class="pw">
						<span>비밀번호를 입력해주세요.</span>
						<input type="password" name="pw"/>
					</div>
					<div align="center"  style="margin-right: 20px;">
					<button name="subm" class="subm">
					확인</button>
					<button name="back" class="back">
					뒤로</button>
					</div>	
					</div>
				</div>	
					<!-- main bbs end -->
				</div>					
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.user.model.DTO.memDTO" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>class6-LMS</title>
		<link href="${subpath}/css/member.css" rel="stylesheet" type="text/css">
		<jsp:include page="${realpath }/layout/Header.jsp" />
			<script type="text/javascript">
			function checkValue() {
				var form = document.memInfo;
				
				var pw = $('input[name="memPw"]').val();
				var name = $('input[name="memName"]').val();
				var birth = $('input[name="memBirth"]').val();
				var mail = $('input[name="memMail"]').val();
				var pn = $('input[name="memPnum"]').val();
				
				if(pw.value){
					alert("비밀번호를 입력하세요");
					return false;
				}
				
				if(name.value){
					alert("이름을 입력하세요");
					return false;
				}
			
				if(birth.value){
					alert("생년월일을 입력하세요");
					return false;
				}
				
				if(mail.value){
					alert("이메일을 입력하세요");
					return false;
				}
				
				if(pn.value){
					alert("전화번호를 입력하세요");
					return false;
				}
					
				//이상없으면 회원가입 내용 전송
                location.href="../user/Update.com";
                
                
                var form = document.createElement('form');

        		var obj0,obj1,obj2,obj3,obj4,obj5,obj6;

        		obj0 = document.createElement('input');
        		obj0.setAttribute('type', 'hidden');
        		obj0.setAttribute('name', 'memId');
        		obj0.setAttribute('value', $('td[name="i"]').text());
        		
        		obj1 = document.createElement('input');
        		obj1.setAttribute('type', 'hidden');
        		obj1.setAttribute('name', 'memPw');
        		obj1.setAttribute('value', $('input[id="memPw"]').val());
        		
        		obj2 = document.createElement('input');
        		obj2.setAttribute('type', 'hidden');
        		obj2.setAttribute('name', 'memName');
        		obj2.setAttribute('value', $('input[name="memName"]').val());
        		
        		obj3 = document.createElement('input');
        		obj3.setAttribute('type', 'hidden');
        		obj3.setAttribute('name', 'memGen');
        		obj3.setAttribute('value', $('input[name="memGen"]:checked').val());
        		
        		obj4 = document.createElement('input');
        		obj4.setAttribute('type', 'hidden');
        		obj4.setAttribute('name', 'memBirth');
        		obj4.setAttribute('value', $('input[name="memBirth"]').val());
        		
        		obj5 = document.createElement('input');
        		obj5.setAttribute('type', 'hidden');
        		obj5.setAttribute('name', 'memMail');
        		obj5.setAttribute('value', $('input[name="memMail"]').val());
        		
        		obj6 = document.createElement('input');
        		obj6.setAttribute('type', 'hidden');
        		obj6.setAttribute('name', 'memPnum');
        		obj6.setAttribute('value', $('input[name="memPnum"]').val());
        		
        		
        		
        		form.appendChild(obj0).appendChild(obj1).appendChild(obj2).appendChild(obj3).appendChild(obj4).appendChild(obj5).appendChild(obj6);

        		form.setAttribute('method', 'post');

        		form.setAttribute('action', "../user/Update.com");

        		document.body.appendChild(form);

        		form.submit();
			}
			function goback() {
				window.history.back();
			}
			</script>
				<div class="main" style="overflow: auto">
					<!-- 메인화면 -->
		       		<c:forEach items="${list }" var="List"> 
					<table>
						<tr>
							<th>개인 정보 수정</th>
						</tr>
						<tr>
							<td id="title">아이디</td>
							<td name="i">${List.memId }</td>
						</tr>
						
						<tr>
							<td id="title">비밀번호</td>
							<td>
								<input type="password" name="memPw" maxlength="20" value="${List.memPw }" />
							</td>
						</tr>
						
						<tr>
							<td id="title">이름</td>
							<td>
								<input type="text" name="memName" maxlength="40" value="${List.memName }" />
							</td>
						</tr>
						
						<tr>
							<td id="title">성별</td>
							<td>
								<input type="radio" name="memGen" value="남" >남성
				                <input type="radio" name="memGen" value="여" >여성
							</td>
						</tr>
						
						<tr>
							<td id="title">생년월일</td>
							<td>
								<input type="text" name="memBirth" maxlength="8" value="${List.memBirth }" />
							</td>
						</tr>
						
						<tr>
							<td id="title">이메일</td>
							<td>
								<input type="email" name="memMail" maxlength="40" value="${List.memMail }"/>
							</td>
						</tr>
						
						<tr>
							<td  id="title">휴대전화</td>
							<td>
								<input type="number" name="memPnum" maxlength="11" value="${List.memPnum }"/>
				            </td>
						</tr>
					</table>
					<input type="button" value="수정" onclick="checkValue()"/>
					<!-- 취소 클릭시 마이페이지로 이동 -->
					<input type="button" value="취소" onclick="goback()" />
				</form>
		      		</c:forEach>
				</div>
		<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
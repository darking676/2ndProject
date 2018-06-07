<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<link href="${subpath}/css/login.css" rel="stylesheet" type="text/css">
			<jsp:include page="${subpath }/layout/Header.jsp" /> 
			<script type="text/javascript" src="${subpath }/js/loginAdd.js"></script>
				<div class="main" style="overflow: auto" >
					<!-- main contents Start -->
					<br><br>
			        <b><font size="6" color="gray">회원가입</font></b>
			        <br><br><br>
			        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
			        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 memAddJoin.jsp -->
			        <div style="margin: 0px 345px;">
			            <table>
			            	<!-- 필수 정보 입력 -->
			            	<!-- 아이디,비번,이름,성별,생년월일,이메일,폰번호 순서 -->
			                <tr>
			                    <td id="title">아이디</td>
			                    <td>
			                        <input type="text" id="memId" value="${memId }" maxlength="20" />
			                        <button id="idChk">중복확인</button> 
			                    </td>
			                </tr>
			                        
			                <tr>
			                    <td id="title">비밀번호</td>
			                    <td>
			                        <input type="password" name="memPw" maxlength="20">
			                    </td>
			                </tr>
			                
			                <tr>
			                    <td id="title">이름</td>
			                    <td>
			                        <input type="text" name="memName" maxlength="40">
			                    </td>
			                </tr>
			                    
			                <tr>
			                    <td id="title">성별</td>
			                    <td>
			                        <input type="radio" name="memGen" value="남" checked>남성
			                        <input type="radio" name="memGen" value="여" >여성
			                    </td>
			                </tr>
			                    
			                <tr>
			                    <td id="title">생년월일</td>
			                    <td>
			                    	<input type="text" name="memBirth" maxlength="8">
			                    </td>
			                </tr>
			                    
			                <tr>
				                <!-- 이메일 -->
			                    <td id="title">이메일</td>
			                    <td>
									<input type="email" name="memMail" maxlength="40">
			                    </td>
			                </tr>
			                    
			                <tr>
			                    <td id="title">휴대전화</td>
			                    <td>
									<input type="number" name="memPnum" maxlength="11"/>
			                    </td>
			                </tr>
			            </table>
			            <br>
						<input class="addbtn" type="button" value="가입" onclick="checkValue()">  
						<input class="addbtn" type="button" value="취소" onclick="goMain()">
			        </div>
	   	 			</div>  
					<!-- main contents End -->
				<jsp:include page="${subpath }/layout/Footer.jsp" /> 
	</body>
</html>
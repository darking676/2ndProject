<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<script type="text/javascript" src="${subpath }/js/loginForm.js"></script>
			<jsp:include page="${subpath }/layout/Header.jsp" /> 
				<div class="main" style="overflow: auto" >
					<!-- main contents Start -->
					<div style="margin: 155px 350px;">
			        <form class="loginform" name="loginInfo" method="post" action="../Login/Login.com" onsubmit="return checkValue()">
			            <br><br>
			            <table>
			                <tr>
			                    <td bgcolor="skyblue">아이디</td>
			                    <td><input type="text" name="memId" maxlength="20"></td>
			                </tr>
			                <tr>
			                    <td bgcolor="skyblue">비밀번호</td>
			                    <td><input type="password" name="memPw" maxlength="20"></td>
			                </tr>
			            </table>
			            <br>
			            <input type="submit" value="로그인"/>
			            <input type="button" value="아이디/비밀번호 찾기" onclick="goFindform()"/>
			            <input type="button" value="회원가입" onclick="goAddForm()" />
			        </form>
		        	<% 
		            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
		            // memLogin.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
		            String msg=request.getParameter("msg");
		            
		            if(msg!=null && msg.equals("0")) 
		            {
		                out.println("<br>");
		                out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
		            }
		            else if(msg!=null && msg.equals("-1"))
		            {    
		                out.println("<br>");
		                out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
		            }
		     	  	%>   
		     	  	</div> 
					<!-- main contents End -->
				<!-- </div>	 -->				
				</div>
			<jsp:include page="${subpath }/layout/Footer.jsp" /> 
		</div>
	</body>
</html>
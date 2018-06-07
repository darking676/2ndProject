<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비번찾기</title>
</head>
	<script type="text/javascript">
		function goLogin() {
			location.href="../Login/LoginForm.com";
		}
	</script>
<body>
			<jsp:include page="${subpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto">
				<div style="margin: 141px 350px;">
				
		        <form method="post" action="../Login/idFind.com">
				<table>
					<tr>
						<td>아이디 찾기</td>
					</tr>
					
					<tr>
						<td>이름</td>
						<td><input type="text" name="memName" size="20" /></td>
					</tr>
					
					<tr>
						<td>이메일</td>
						<td><input type="email" name="memMail" size="20" /></td>
					</tr>
					
					<tr>
						<td>
							<input type="submit" value="찾기" />
							<!-- 취소 클릭시 로그인 페이지로 이동 -->
							<input type="button" value="취소" onclick="goLogin()"/>
						</td>
					</tr>
				</table>
				</form>
					
				<form method="post" action="../Login/pwFind.com">
					<table>
						<tr>
							<td>비밀번호 찾기</td>
						</tr>
						
						<tr>
							<td>아이디</td>
							<td><input type="text" name="memId" size="20" /></td>
						</tr>
						
						<tr>
							<td>이름</td>
							<td><input type="text" name="memName" size="20" /></td>
						</tr>
						
						<tr>
							<td>이메일</td>
							<td><input type="email" name="memMail" size="20" /></td>
						</tr>
						<tr>
							<td>
								<input type="submit" value="찾기" />
								<!-- 취소 클릭시 로그인 페이지로 이동 -->
								<input type="button" value="취소" onclick="goLogin()"/>
							</td>
						</tr>
					</table>
				</form>
	        	
	     	  	</div> 
   	 			</div>    				
			<jsp:include page="${subpath }/layout/Footer.jsp" />
</body>
</html>
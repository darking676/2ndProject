<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 탈퇴</title>
</head>
	<script type="text/javascript">
	
		function checkValue() {
			if(!document.del.memPw.value){
				alert("비밀번호를 입력하지 않았습니다.");
				return false;
			}
		}
	
		function goMain() {
			location.href="main.jsp";
		}
		
	</script>
<body>
	<form name="deleteform" method="post" action="main.jsp" onsubmit="return checkValue()">
		<table>
			<tr>
				<td bgcolor="skyblue">비밀번호</td>
				<td><input type="password" name="memPw" maxlength="20"></td>
			</tr>
		</table>
			
		<br> 
		<input type="submit" value="탈퇴" /> 
		<input type="button" value="취소" onclick="goMain()">
	</form>
</body>
</html>
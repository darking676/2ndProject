<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="com.login.model.DTO.memDTO" %>
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
					

		        <c:forEach items="${list }" var="list">
				<br><br>
		        <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
		        <br><br>
		        <font color="blue">${list.memId }</font>님 가입을 축하드립니다.
		        <br><br>
		        
		        <%-- 자바빈(memDTO)에서 입력된 값을 추출한다. --%>
		        <table>
		        
		            <tr>
		                <td id="title">아이디</td>
		                <td>${list.memId }</td>
		            </tr>
		                        
		            <tr>
		                <td id="title">비밀번호</td>
		                <td>${list.memPw }</td>
		            </tr>
		                    
		            <tr>
		                <td id="title">이름</td>
		                <td>${list.memName }</td>
		            </tr>
		                    
		            <tr>
		                <td id="title">생년월일</td>
		                <td>
		                	${list.memBirth }
		                </td>
		            </tr>
		                    
		            <tr>
		                <td id="title">성별</td>
		                <td>
		                	${list.memGen }
		                </td>
		            </tr>
		                    
		            <tr>
		                <td id="title">이메일</td>
		                <td>
		                    ${list.memMail }
		                </td>
		            </tr>
		                    
		            <tr>
		                <td id="title">휴대전화</td>
		                <td>${list.memPnum }</td>
		            </tr>
		            
		        </table>
		        </c:forEach>
		        <br>
		        <input type="button" value="확인" onclick="goLogin()">


					<!-- main contents End -->
				</div>	
			<jsp:include page="${subpath }/layout/Footer.jsp" /> 
	</body>
</html>
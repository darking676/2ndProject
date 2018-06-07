<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아이디/비번찾기</title>
	<jsp:include page="${subpath }/layout/Header.jsp" />
	<script type="text/javascript">
		function goFind() {
			location.href="../Login/findForm.com";
		}
		function gomain() {
			location.href="../user/index";
		}
	</script>
	<div class="main" style="overflow: auto">
					<!-- 메인화면 -->
		<c:choose>
	    <c:when test="${!empty memId}">
	        <p>${memName }님 아이디는 ${memId } 입니다.</p>
			<!-- 확인 클릭시 메인화면으로 이동 -->
			<input type="submit" value="확인" onclick="gomain()"/>  
	    </c:when>
	    <c:when test="${empty memId }">
	        ${er }<br/>
			<!-- 다시 입력 버튼 클릭시 찾기 페이지로 이동 -->
			<input type="button" value="다시 입력" onclick="goFind()" />   
	    </c:when>
		</c:choose>
	</div>
	<jsp:include page="${subpath }/layout/Footer.jsp" />
</body>
</html>
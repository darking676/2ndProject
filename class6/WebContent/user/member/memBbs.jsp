<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ page import="java.util.List" %>
<%@ page import="com.user.model.DTO.bbsMemDTO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<link href="${subpath}/css/memBbs.css" rel="stylesheet" type="text/css">
			<jsp:include page="${realpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto" >
					<!-- main contents Start -->
					
					<div class="memBbsTop">
				    	<h1>회원게시판</h1>
				   		<button class="bbsW">글쓰기</button>
				    </div>
				    <br>
				    <div class="listBox">
				        <table>
				            <tr>
				                <td>글번호</td>
				                <td>분류</td>
				                <td>제목</td>
				                <td>글쓴이</td>
				                <td>조회수</td>
				                <td>작성일</td>
				            </tr>    
				            <c:forEach items="${list }" var="list"> 
				            <tr>
				            
				                <td><a href="../user/memBbsD.com?idx=1">${list.bbsMemNo }</a></td>
				                <td>${list.bbsMemCate }</td>
				                <td>${list.bbsMemName }</td>
				                <td>${list.memId }</td>
				                <td>${list.bbsMemView }</td>
				                <td>${list.bbsMemDate }</td>
				            
				            </tr>
				            </c:forEach>
				        </table>
				    </div>
				    <br>
				    <div class="pageView">
				        페이지 번호
				    </div>
				    <br>
				    <div class="searchForm">
				        <form>
				            <select name="opt">
				                <option value="0">제목</option>
				                <option value="1">내용</option>
				                <option value="2">제목+내용</option>
				                <option value="3">글쓴이</option>
				            </select>
				            <input type="text" size="20" name="condition"/>&nbsp;
				            <input type="submit" value="검색"/>
				        </form>    
				    </div>
					
					<!-- main contents End -->
				</div>					
		<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
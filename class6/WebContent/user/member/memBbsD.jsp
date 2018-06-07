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
				    </div>
				    <br>
				    <div class="listBox">
			            <c:forEach items="${list }" var="list">
			            <div>
							<span>글번호</span>
							<span>${list.bbsMemNo}</span>
						</div>
						<div>
							<span>분류</span>
							<span>${list.bbsMemCate}</span>
						</div>
						<div>
							<span>제목</span>
							<span>${list.bbsMemName}</span>
						</div>
						<div>
							<span>내용</span>
							<span>${list.bbsMemCon}</span>
						</div>
						<div>
							<span>글쓴이</span>
							<span>${list.memId}</span>
						</div>
						<div>
							<span>조회수</span>
							<span>${list.bbsMemView}</span>
						</div>
						<div>
							<span>날짜</span>
							<span>${list.bbsMemDate}</span>
						</div>
			            </c:forEach>
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
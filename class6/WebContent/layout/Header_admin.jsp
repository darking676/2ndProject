<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery-1.12.4.js?ver1"></script>
		<link href="../css/main_admin.css?ver=2" rel="stylesheet">
		<script src="../js/script.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){

          //로그인후
			$('#Logout').click(function(){
				location.href = "../Login/Logout.com";
			});
		});
		</script>
	</head>	
	<body>
		<div id="container">
			<div id="cssmenu">
				<div id="logo">
					<a href="../admin/index.com"><img src="../img/logo_admin.PNG"/></a>
				</div>
				<ul>
				   <li class='active'><a href='../admin/index.com'><span>메인화면</span></a></li>
				   <li class='has-sub'><a href='#'><span>모집</span></a>
				      <ul>
				         <li><a href='../admin/lec/lecStuInput.com'><span>학생 배정</span></a></li>
				         <li class='last'><a href='../admin/lec/lecList.com'><span>강의 관리</span></a></li>
				      </ul>
				   </li>
				   <li class='has-sub'><a href='#'><span>교육</span></a>
				      <ul>
				         <li><a href='../admin/stu/stuChkList.com'><span>출결 관리</span></a></li>
				         <li><a href='../admin/stu/stuGraInputList.com'><span>성적 관리</span></a></li>
				         <li><a href='../admin/class/claList.com'><span>강의실 관리</span></a></li>
				         <li class='last'><a href='#'><span>강사 관리</span></a></li>
				      </ul>
				   </li>
				   <li><a href='../user/QnaList.com'><span>게시판</span></a>
					   <ul>
				         <li><a href='../admin/bbs/BbsList.com'><span>공지사항</span></a></li>
				         <li class='last'><a href='../admin/bbs/QnaList.com'><span>상담 게시판</span></a></li>
					   </ul>
				   </li>
				   <li class='last'><a href='../user/index'><span>비트캠프 홈페이지</span></a></li>
				</ul>
			</div>
			<div class="page">
				<div class="top">
					<!-- 상단 로그인 -->
					<div class="login">
						<button class="memberLogin" id="Logout" style="margin-top: 10px;">로그아웃</button>
						<label style="float: right;margin-right : 10px">님 환영합니다</label>
						<label name="id" style="float: right;margin: 0px 4px 0px 0px;">${sessionID }</label>
					</div>
				</div>
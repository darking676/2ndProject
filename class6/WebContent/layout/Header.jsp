<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html><!-- header 공통부분 -->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
		<link href="../css/main.css?ver=2" rel="stylesheet">
		<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="../js/main.js"></script>
		<script src="../js/script.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			//로그인후
			if ($("label[name=id]").text() != "") {
				$(".login").remove();
				$('.top').prepend("<div></div>").children().first().attr({
		            'class' : "logout",
		            'id' : "out"
		        }).append("<button>로그아웃</button>").children().first().attr({
		            'class' : "memberLogin",
		            'id' : "Logout"
		        }).after("<label>님 환영합니다</label>").css({
		        	'float' : "right",
		        	'margin-right' : "10px"
		        });
			}
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
					<a href="../user/index"><img src="../img/logo.PNG"/></a>
				</div>
				<ul>
				   <li class='active'><a href='../user/index.com'><span>메인화면</span></a></li>
				   <li class='has-sub'><a href='../user/Intro.com'><span>비트캠프 구로지점</span></a>
				      <ul>
				         <li><a href='../user/Intro.com'><span>비트캠프 소개</span></a></li>
				         <li><a href='../user/CompanyChart.com'><span>조직도</span></a></li>
				         <li><a href='../user/tea.com'><span>강사진 소개</span></a></li>
				         <li class='last'><a href='../user/way.com'><span>오시는길</span></a></li>
				      </ul>
				   </li>
				   <li class='has-sub'><a href='../user/LecIntro.com'><span>강의 소개</span></a>
				      <ul>
				         <!--<li><a href='../user/LecIntro.com'><span>전체 과정 소개</span></a></li>-->
				         <li><a href='../user/Java.com'><span>JAVA 과정</span></a></li>
				         <li><a href='../user/Clanguage.com'><span>C언어 과정</span></a></li>
				         <li><a href='../user/Bigdata.com'><span>빅데이터 과정</span></a></li>
				         <li class='last'><a href='../user/Android.com'><span>안드로이드 과정</span></a></li>
				      </ul>
				   </li>
				   <li><a href='../user/QnaList.com'><span>상담하기</span></a></li>
				   <li class='last'><a href='../user/mypage.com'><span>회원페이지</span></a></li>
				</ul>
			</div>
			<div class="page">
				<div class="top">
					<!-- 상단 로그인 -->
					<div class="login">
						<button class="memberLogin" id="Add">회원가입</button>
						<button class="memberLogin" id="Login">로그인</button>
					</div>
					<label name="id" style="float: right;margin: 4px 4px 0px 0px;">${sessionID }</label>
				</div>
				
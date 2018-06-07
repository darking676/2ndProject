<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html><!-- header 공통부분 -->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
		<link href="../css/main.css" rel="stylesheet" type="text/css">
		<style type="text/css">					
			*{
				font-family: 'Nanum Gothic', sans-serif;
			}
		</style>
		<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="../js/main.js"></script>
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
		<div class="container">
			<div class="menuBar">
				<div class="logo">
					<a href="../user/index"><img src="../img/logo.JPG"/></a>
				</div>
				<div class="menu0" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu1" id="menu">
					<!-- 메인화면버튼 -->
					<div class="mainbutton">
						<a href="../user/index.com">메인화면</a>
					</div>
				</div>
				<div class="menu2" id="menu">
					<!-- 소개 -->
					<div class="bitbutton">
						<a href="../user/Intro.com">비트캠프구로지점</a>					
					</div>
					<div class="bit">
						<div class="bitintro">
							<a href="../user/Intro.com">비트캠프 소개</a>						
						</div>
						<div class="bitcla">
							<a href="../user/CompanyChart.com">조직도</a>
						</div>
						<div class="bittea">
							<a href="../user/tea.com">강사진 소개</a>
						</div>
						<div class="bitnavi">
							<a href="../user/way.com">오시는길</a>
						</div>
					</div>
				</div>				
				<div class="menu3" id="menu">
					<!-- 강의 -->
					<div class="clabutton">
						<a href="../user/LecIntro.com">강의 소개</a>					
					</div>
					<div class="cla">
						<div class="clajava">
							<a href="../user/Java.com">JAVA 과정</a>
						</div>
						<div class="clac">
							<a href="../user/Clanguage.com">C언어 과정</a>
						</div>
						<div class="clabig">
							<a href="../user/Bigdata.com">빅데이터 과정</a>
						</div>
						<div class="claand">
							<a href="../user/Android.com">안드로이드 과정</a>
						</div>
					</div>
				</div>
				<div class="menu4" id="menu">
					<!-- 상담 -->
					<div class="advice">
						<a href="../user/QnaList.com">상담</a>
					</div>
				</div>
				<div class="menu5" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu6" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu7" id="menu">
					<!-- 회원페이지 -->
					<div class="membutton">
						<a id="mypage">회원 페이지</a>
					</div>
				</div>
				<div class="menu8" id="menu">
					<!-- 빈공간 -->
				</div>		
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
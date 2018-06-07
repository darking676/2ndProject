<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
		<link href="${realpath }/css/main.css" rel="stylesheet" type="text/css">
		<style type="text/css">					
		*{
			font-family: 'Nanum Gothic', sans-serif;
		}
			
		html {
		  box-sizing: border-box;
		}
		
		*, *:before, *:after {
		  box-sizing: inherit;
		}
		
		.column {
		  float: left;
		  width: 900px;
		  margin-bottom: 16px;
		  padding: 0 8px;
		}
		
		@media screen and (max-width: 650px) {
		  .column {
		    width: 60%;
		    display: block;
		  }
		}
		
		.card {
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		}
		
		.pro {
		  padding: 0 16px;
		}
		
		.pro::after, .row::after {
		  content: "";
		  clear: both;
		  display: table;
		}
		
		.title {
		  color: grey;
		}
</style>
			<jsp:include page="${realpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto">
					<!-- 메인화면 -->
					<h1>강사진소개</h1>
						<div class="clear"></div>
						<img alt="profile" src="${subpath }/img/guro/profile/profile_01.jpg">
						<br>
						<div class="row">
						  <div class="column">
						    <div class="card">
						      <img src="${subpath }/img/guro/profile/profile_02.jpg">
						      <div class="pro">
						        <h2>유시민</h2>
						        <p class="title">
						        	학력 사항&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	담당 과정
					        	</p>
						        <p>
						        	마인츠요하네스구텐베르크대학교대학원 경제학 석사
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>JAVA 과정
					        	</p>
						        <p>
						        	서울대학교 경제학 학사
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>Android 과정
					        	</p>
						        <p>
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>빅데이터 과정
					        	</p>					        	
						      </div>
						    </div>
						  </div>
						
						  <div class="column">
						    <div class="card">
						      <img src="${subpath }/img/guro/profile/profile_03.jpg">
						      <div class="pro">
						        <h2>설민석</h2>
						        <p class="title">
						        	학력 사항&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	담당 과정
					        	</p>
						        <p>
						        	한림대학교 대학원 사회학&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>JAVA 과정
					        	</p>
						        <p>
						        	고려대학교 사회학 학사 
    	   					       	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>Android 과정
					        	</p>
     						    <p>
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>빅데이터 과정
					        	</p>	
						      </div>
						    </div>
						  </div>
						  <div class="column">
						    <div class="card">
						      <img src="${subpath }/img/guro/profile/profile_04.jpg">
						      <div class="pro">
						        <h2>최진기</h2>
						        <p class="title">
						        	학력 사항&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	담당 과정
					        	</p>
						        <p>
						      	  연세대학교 교육대학원 역사교육학 석사
						      	  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>JAVA 과정
						        </p>
     						    <p>
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>Android 과정
					        	</p>
     						    <p>
						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   						        	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						        	<b>ㆍ</b>빅데이터 과정
					        	</p>						        								        
						      </div>
						    </div>
						  </div>
						</div>
				</div>
				<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
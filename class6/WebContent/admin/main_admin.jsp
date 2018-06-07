<%--
  Created by IntelliJ IDEA.
  User: pro
  Date: 2018. 6. 1.
  Time: 오전 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Class6-LMS</title>
    <jsp:include page="${subpath }/layout/Header_admin.jsp" />
    <div class="main" style="overflow: auto" >
        <!-- main slide -->
		<div class="slideshow-container" style="margin: 20px 10px 10px 20px">
					
					<div class="mySlides fade">
					  <img src="${subpath }/img/main/MainPage_Banner_01.JPG" style="width:100%">
					</div>
					<div class="mySlides fade">
					  <img src="${subpath }/img/main/MainPage_Banner_02.JPG" style="width:100%">
					</div>
					<div class="mySlides fade">
					  <img src="${subpath }/img/main/MainPage_Banner_03.JPG" style="width:100%">
					</div>
					<div class="mySlides fade">
					  <img src="${subpath }/img/main/MainPage_Banner_04.JPG" style="width:100%">
					</div>
					<div class="mySlides fade">
					  <img src="${subpath }/img/main/MainPage_Banner_05.JPG" style="width:100%">
					</div>
					<div class="mySlides fade">
					  <img src="${subpath }/img/main/MainPage_Banner_06.JPG" style="width:100%">
					</div>
					<div style="text-align:center">
					  <span class="dot" onclick="currentSlide(1)"></span> 
					  <span class="dot" onclick="currentSlide(2)"></span> 
					  <span class="dot" onclick="currentSlide(3)"></span> 
					  <span class="dot" onclick="currentSlide(4)"></span> 
					  <span class="dot" onclick="currentSlide(5)"></span> 
					  <span class="dot" onclick="currentSlide(6)"></span> 
					</div>
		</div>
    </div>
    <jsp:include page="${subpath}/layout/Footer.jsp" />
    <jsp:include page="${subpath }/layout/slide.jsp" />
</html>

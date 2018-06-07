<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Class6-LMS</title>
			<jsp:include page="${realpath }/layout/Header.jsp" />
				<div class="main" style="overflow: auto">
					<!-- 메인화면 -->
						<section>
							<div class="clear"></div>
							<img alt="intro" src="${subpath }/img/guro/intro_01.jpg" style="width: 100%;">
							<br>
							<img alt="intro" src="${subpath }/img/guro/intro/intro_01.jpg" style="width: 100%;">
							<br><br>
							<div  style="margin-left:1px; margin-top:30px; width: 800px; ">
								<video style="right: 20%;" src="${subpath }/video/video_bitschool_CM.mp4" type="video/mp4" controls loop autoplay width="720"></video>
							</div>
							<br><br>
							<img alt="intro" src="${subpath }/img/guro/intro/intro_02.jpg" style="width: 100%;">
							<br>
						</section>
				</div>
				<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
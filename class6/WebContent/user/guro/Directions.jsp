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
					<img alt="navi" src="${subpath }/img/guro/directions/directions_01.jpg" style="margin-left: 20px;">
						<div class="clear"></div>
	    				<div id="map"  style="border:5px solid #dedede;float:left;width:900px;height:300px;z-index: -1;margin-left: 20px;" >
	    				</div>
		<script>
   		var marker;
	
	      function initMap() {
	        var map = new google.maps.Map(document.getElementById('map'), {
	          zoom: 17,
	          center: {lat: 37.484440, lng: 126.897838}
	        });

	        marker = new google.maps.Marker({
	          map: map,
	          draggable: true,
	          animation: google.maps.Animation.DROP,
	          position: {lat: 37.484440, lng: 126.897838}
	        });
	        marker.addListener('click', toggleBounce);
	      }
	    </script>
		    <script async defer
		    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvkWWWZHSz49hdnRk7rcofDaj35n7vFz8&callback=initMap">
		    </script> 
			<div class=clear10></div>  <div class=clear10></div>  
			</div>
		 	<div style="color:#0b7cc6; " > <b><i class="entypo-location"></i> 회사주소 : 서울시 구로구 구로동 1234-1 2층 비트캠프 </b></div>
			<jsp:include page="${realpath }/layout/Footer.jsp" />
	</body>
</html>
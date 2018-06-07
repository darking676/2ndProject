<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		<link rel="stylesheet" href="../css/jquery.bxslider.min.css"/>
		<script type="text/javascript" src="../js/jquery.bxslider.min.js"></script>
		<script type="text/javascript">
		
		//bxslider
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";  
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 2000); // Change image every 2 seconds
		}		
		</script>		
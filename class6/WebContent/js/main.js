
$(document).ready(function(){
	$('.menu2').mouseover(function(){
		$('.bitbutton').css("background", "rgba(255, 255, 255, 0.28)");
		$('.bit').css("display","inline");
	});					
	$('.menu2').mouseout(function(){
		$('.bitbutton').css("background", "rgba(255, 255, 255, 0)");
		$('.bit').css("display","none");
	});	
	$('.menu3').mouseover(function(){
		$('.clabutton').css("background", "rgba(255, 255, 255, 0.28)");
		$('.cla').css("display","inline");
	});					
	$('.menu3').mouseout(function(){
		$('.clabutton').css("background", "rgba(255, 255, 255, 0)");
		$('.cla').css("display","none");
	});	
	$(".cla>div, .bit>div").mouseover(function(){
		$(this).css("background", "rgba(0, 0, 0, 0.28)");
	});
	$(".cla>div, .bit>div").mouseout(function(){
		$(this).css("background", "rgba(0, 0, 0, 0)");
	});
	
	$('.menu1').mouseover(function(){
		$('.mainbutton').css("background", "rgba(255, 255, 255, 0.28)");
	});					
	$('.menu1').mouseout(function(){
		$('.mainbutton').css("background", "rgba(255, 255, 255, 0)");
	});	
	$('.menu7').mouseover(function(){
		$('.membutton').css("background", "rgba(255, 255, 255, 0.28)");
	});					
	$('.menu7').mouseout(function(){
		$('.membutton').css("background", "rgba(255, 255, 255, 0)");
	});	
	$('.menu4').mouseover(function(){
		$('.advice').css("background", "rgba(255, 255, 255, 0.28)");
	});					
	$('.menu4').mouseout(function(){
		$('.advice').css("background", "rgba(255, 255, 255, 0)");
	});	
	
	//로그인전
	$('#Login').click(function(){
		 location.href = "../Login/LoginForm.com";
	});
	$('#Add').click(function(){
		 location.href = "../Login/AddForm.com";
	});
	
	//mypage 이동
	$("#mypage").click(function(){

		var form = document.createElement('form');

		var objs;

		objs = document.createElement('input');

		objs.setAttribute('type', 'hidden');

		objs.setAttribute('name', 'id');

		objs.setAttribute('value', $('label[name="id"]').text());
		
		form.appendChild(objs);

		form.setAttribute('method', 'post');

		form.setAttribute('action', "../user/mypage.com");

		document.body.appendChild(form);

		form.submit();
	});	
	
});

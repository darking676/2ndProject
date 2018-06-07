$(document).ready(function(){
	$('#memBbs').click(function(){
					location.href = "../user/memBbs.com";
				});
	$('#memInfo').click(function(){
		location.href = "../user/memInfo.com";
	});
	//memInfo �̵�
	$("#memInfo").click(function(){

		var form = document.createElement('form');

		var objs;

		objs = document.createElement('input');

		objs.setAttribute('type', 'hidden');

		objs.setAttribute('name', 'id');

		objs.setAttribute('value', $('label[name="id"]').text());
		
		form.appendChild(objs);

		form.setAttribute('method', 'post');

		form.setAttribute('action', "../user/memInfo.com");

		document.body.appendChild(form);

		form.submit();
	});	
});

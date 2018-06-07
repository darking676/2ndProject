//AddForm.jsp
$(document).ready(function(){
		
	// id 중복체크 화면
        $("#idChk").click(function(){
        	
        
        	var id = $('input[id="memId"]').val();
        	
        	if(id=="")
        		
        		alert("입력된 아이디가 없습니다.");
			else{ 

    		var form = document.createElement('form');

    		var objs;

    		objs = document.createElement('input');

    		objs.setAttribute('type', 'hidden');

    		objs.setAttribute('name', 'memId');

    		objs.setAttribute('value', $('input[id="memId"]').val());
    		
    		form.appendChild(objs);

    		form.setAttribute('method', 'post');

    		form.setAttribute('action', "../Login/idChk.com");

    		document.body.appendChild(form);

    		form.submit();
			}
        });
});	 
			//필수 입력 정보가 입력되었는지 확인하는 함수(아이디 중복, 유효성 검사 등)
			// checkValue 시작
			
			
			// 취소 버튼 클릭시 로그인 화면으로 이동
			function goMain() {
				location.href="../user/index.com";
			}

			
			function goLogin() {
				location.href="../Login/LoginForm.com";
			}
			
			
        	function checkValue()
            {
                
                if(!$('input[id="memId"]').val()){
                    alert("아이디를 입력하세요.");
                    return false;
                }
                
                /*if(form.idDupl.value != "idCheck"){
                    alert("아이디 중복체크를 해주세요.");
                    return false;
                }*/
                
                if(!$('input[name="memPw"]').val()){
                    alert("비밀번호를 입력하세요.");
                    return false;
                }
                
                if(!$('input[name="memName"]').val()){
                    alert("이름을 입력하세요.");
                    return false;
                }
                
                if(!$('input[name="memBirth"]').val()){
                    alert("생년월일을 입력하세요.");
                    return false;
                }
                
                if(isNaN($('input[name="memBirth"]').val())){
                    alert("생년월일은 숫자만 입력가능합니다.");
                    return false;
                }
               
                if(!$('input[name="memMail"]').val()){
                    alert("메일 주소를 입력하세요.");
                    return false;
                }
                
                            
                if(!$('input[name="memPnum"]').val()){
                    alert("전화번호를 입력하세요.");
                    return false;
                }
                
                if(isNaN($('input[name="memPnum"]').val())){
                    alert("전화번호는 - 제외한 숫자만 입력해주세요.");
                    return false;
                }
                
                //이상없으면 회원가입 내용 전송
                location.href="../Login/Add.com";
                
                
                var form = document.createElement('form');

        		var obj1,obj2,obj3,obj4,obj5,obj6,obj7;

        		obj1 = document.createElement('input');
        		obj1.setAttribute('type', 'hidden');
        		obj1.setAttribute('name', 'memId');
        		obj1.setAttribute('value', $('input[id="memId"]').val());
        		
        		obj2 = document.createElement('input');
        		obj2.setAttribute('type', 'hidden');
        		obj2.setAttribute('name', 'memPw');
        		obj2.setAttribute('value', $('input[name="memPw"]').val());
        		
        		obj3 = document.createElement('input');
        		obj3.setAttribute('type', 'hidden');
        		obj3.setAttribute('name', 'memName');
        		obj3.setAttribute('value', $('input[name="memName"]').val());
        		
        		obj4 = document.createElement('input');
        		obj4.setAttribute('type', 'hidden');
        		obj4.setAttribute('name', 'memGen');
        		obj4.setAttribute('value', $('input[name="memGen"]').val());
        		
        		obj5 = document.createElement('input');
        		obj5.setAttribute('type', 'hidden');
        		obj5.setAttribute('name', 'memBirth');
        		obj5.setAttribute('value', $('input[name="memBirth"]').val());
        		
        		obj6 = document.createElement('input');
        		obj6.setAttribute('type', 'hidden');
        		obj6.setAttribute('name', 'memMail');
        		obj6.setAttribute('value', $('input[name="memMail"]').val());
        		
        		obj7 = document.createElement('input');
        		obj7.setAttribute('type', 'hidden');
        		obj7.setAttribute('name', 'memPnum');
        		obj7.setAttribute('value', $('input[name="memPnum"]').val());
        		
        		
        		form.appendChild(obj1).appendChild(obj2).appendChild(obj3).appendChild(obj4).appendChild(obj5).appendChild(obj6).appendChild(obj7);

        		form.setAttribute('method', 'post');

        		form.setAttribute('action', "../Login/Add.com");

        		document.body.appendChild(form);

        		form.submit();
                

            }// checkValue 끝


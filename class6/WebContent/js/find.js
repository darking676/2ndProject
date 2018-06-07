//LoginForm.jsp   
        
        
        function checkValue()
        {
            addMem = eval("document.loginInfo");
            if(!addMem.memId.value)
            {
                alert("아이디를 입력하세요");    
                addMem.memId.focus();
                return false;
            }
            if(!addMem.memPw.value)
            {
                alert("비밀번호를 입력하세요");    
                addMem.memPw.focus();
                return false;
            }
        }
    
     // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goAddForm() {
            location.href="../Login/AddForm.com";
        }    
        
        // 아이디, 비밀번호 찾기 클릭시 찾는 id/pw 찾는 페이지로 이동
        function goFindform() {
			location.href="../Login/findForm.com";
		}
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>로그인 처리 JSP</title>
</head>
<body>
    <%
    	// 인코딩 처리
        request.setCharacterEncoding("UTF-8"); 
        
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        String memId= request.getParameter("memId");
        
        // URL 및 로그인관련 전달 메시지
        String msg = "../user/index.com";
        
        // 세션에 현재 아이디 세팅
        session.setAttribute("sessionID", memId);

         
        // sendRedirect(String URL) : 해당 URL로 이동
        // URL뒤에 get방식 처럼 데이터를 전달가능
        response.sendRedirect(msg);
    %>
</body>
</html>
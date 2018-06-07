package com.login.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.model.DAO.memDAO;
import com.login.model.DTO.memDTO;



public class pwFind implements Action {//id,pw 찾는 페이지 미완성

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../login/findPw.jsp";
		
		
		String memId=request.getParameter("memId");
		String memName=request.getParameter("memName");
		String memMail=request.getParameter("memMail");
		
		memDAO dao=new memDAO();
		memDTO dto=new memDTO();
		dto= dao.findPw(memId, memName, memMail);
		
		if(!dto.getMemPw().equals("x")){
			request.setAttribute("memPw", dto.getMemPw());
			request.setAttribute("memName", memName);
		}else{
			String err="아이디, 이름 또는 이메일이 틀렸습니다.";
			dto.setMemPw("");
			request.setAttribute("memName", memName);
			request.setAttribute("er", err);
		}
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

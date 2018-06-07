package com.login.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.model.DAO.memDAO;
import com.login.model.DTO.memDTO;



public class idChk implements Action {//id중복검사 페이지 미완성

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../login/AddForm.jsp";
		String memId = request.getParameter("memId");
		System.out.println("아이디체크"+memId);
		
		memDAO dao=new memDAO();
		boolean result;
		result = dao.idChk(memId);
		System.out.println(result);
		
		request.setAttribute("result", result);
		if(result==false) {
			request.setAttribute("memId", memId);
		}
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

package com.user.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.classDAO;
import com.user.model.DTO.classDTO;



public class Clanguage implements Action {//c언어 페이지

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/class/Clanguage.jsp";
		classDAO dao = new classDAO();
		List<classDTO> bean = dao.loadClass("씨언어");
		
		request.setAttribute("ArticleList", bean);	
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

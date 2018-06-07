package com.user.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.model.DAO.SubmitDAO;
import com.user.model.DAO.classDAO;
import com.user.model.DTO.classDTO;



public class Java implements Action {//�ڹ� ������

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "../user/class/Java.jsp";
		classDAO dao = new classDAO();
		List<classDTO> bean = dao.loadClass("�ڹ�");
		
		request.setAttribute("ArticleList", bean);		
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

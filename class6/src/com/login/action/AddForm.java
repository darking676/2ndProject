package com.login.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class AddForm implements Action {//ȸ������ ������ �̿ϼ�

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../login/AddForm.jsp";
		
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
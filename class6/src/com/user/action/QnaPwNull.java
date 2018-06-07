package com.user.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QnaPwNull implements Action {
@Override
public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	String url="../user/index/QnaPwNull.jsp";
	String idx=request.getParameter("idx");
	String pw=request.getParameter("pw");
	String realpath="../..";
	String subpath="..";
	request.setAttribute("realpath",realpath );
	request.setAttribute("subpath",subpath );
	RequestDispatcher dispatcher=request.getRequestDispatcher(url);
	dispatcher.forward(request, response);
}
}

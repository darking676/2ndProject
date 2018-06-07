package com.user.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.bbsMemDAO;
import com.user.model.DTO.bbsMemDTO;


public class memBbs implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/member/memBbs.jsp";
		String memId=request.getParameter("id");
		
		System.out.println("memBbs");
		
		bbsMemDAO dao=new bbsMemDAO();
		List<bbsMemDTO> list=null;
		try {
			list = dao.selectAll();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

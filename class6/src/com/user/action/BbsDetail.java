package com.user.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.bbsDAO;
import com.user.model.DTO.bbsDTO;


public class BbsDetail implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/index/BbsDetail.jsp";
		
		System.out.println("bbsdetail");
		
		int idx=Integer.parseInt(request.getParameter("idx"));
		
		bbsDAO dao= new bbsDAO();
		bbsDTO bean = dao.selectOne(idx);
		List<bbsDTO> list= dao.selectAll(1, 10);
		request.setAttribute("List", list);
		
		dao.updatecnt(idx);
		
		request.setAttribute("dto", bean);
				
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

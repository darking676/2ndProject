package com.user.action;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.bbsDAO;
import com.user.model.DAO.memDAO;
import com.user.model.DTO.bbsDTO;
import com.user.model.DTO.memDTO;


public class BbsAdd implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/index/BbsList.jsp";
		String url2="../user/index/BbsAdd.jsp";
			
		String param1=request.getParameter("bbsName");
		String param2=request.getParameter("bbsCon");
		
		System.out.println(param1);
		System.out.println(param2);
		
		if(param1!=null) {
			System.out.println("글을쓰는경우");
		String bbsName = param1.trim();
		String bbsCon = param2.trim();
		
		bbsDAO dao = new bbsDAO();
		dao.insertOne(bbsName,bbsCon, bbsCon);
		
		List<bbsDTO> list= dao.selectAll(1, 10);
		request.setAttribute("List", list);
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		}else {
			System.out.println("그냥 쓰는페이지");
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url2);
		dispatcher.forward(request, response);
		}
	}

}

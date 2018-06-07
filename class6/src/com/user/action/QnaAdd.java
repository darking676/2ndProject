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

import com.user.model.DAO.bbsQnaDAO;
import com.user.model.DTO.bbsQnaDTO;


public class QnaAdd implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/index/QnaAdd.jsp";
		String url2="../user/index/QnaList.jsp";
			
		String param1=request.getParameter("bbsName");
		String param2=request.getParameter("bbsCon");
		String param3=request.getParameter("bbsPw");
		String param4=request.getParameter("bbsW");
		
		System.out.println(param1);
		System.out.println(param2);
		
		if(param1!=null) {
			System.out.println("글을쓰는경우");
			String bbsName = param1.trim();
			String bbsCon = param2.trim();
			String bbsPw = param3.trim();
			String bbsW = param4.trim();
			
			bbsQnaDAO dao = new bbsQnaDAO();
			dao.insertOne(bbsName,bbsCon,bbsPw,bbsW);
			
			List<bbsQnaDTO> list= dao.getBbsList(1, 10);
			request.setAttribute("List", list);
			
			String realpath="../..";
			String subpath="..";
			request.setAttribute("realpath",realpath );
			request.setAttribute("subpath",subpath );
			RequestDispatcher dispatcher=request.getRequestDispatcher(url2);
			dispatcher.forward(request, response);
		}else{
			String realpath="../..";
			String subpath="..";
			request.setAttribute("realpath",realpath );
			request.setAttribute("subpath",subpath );
			RequestDispatcher dispatcher=request.getRequestDispatcher(url);
			dispatcher.forward(request, response);			
		}
		
		
		
		
		
	}

}

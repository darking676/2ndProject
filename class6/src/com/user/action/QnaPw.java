package com.user.action;

import java.io.IOException;
import java.io.PrintWriter;
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



public class QnaPw implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/index/QnaPw.jsp";
		String url1="../user/index/QnaDetail.jsp";
		String idx=request.getParameter("idx");
		String pw=request.getParameter("pw");
		
		System.out.println(idx);
		System.out.println(pw);
		
		if(pw==null) {
		request.setAttribute("idx", idx);
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		}else {
			
			bbsQnaDAO dao=new bbsQnaDAO();
			bbsQnaDTO bean = dao.selectOne(Integer.parseInt(idx.trim()),pw);
			RequestDispatcher dispatcher;
			if(bean == null){
				String realpath="../..";
				String subpath="..";
				request.setAttribute("realpath",realpath );
				request.setAttribute("subpath",subpath );
				dispatcher=request.getRequestDispatcher("QnaPwNull.com");
				dispatcher.forward(request, response);				
				
			}else{
				List<bbsQnaDTO> list = dao.getBbsList(0, 0);
				request.setAttribute("List", list);
				dao.updatecnt(Integer.parseInt(idx.trim()));
				request.setAttribute("dto", bean);				
				String realpath="../..";
				String subpath="..";
				request.setAttribute("realpath",realpath );
				request.setAttribute("subpath",subpath );
				dispatcher=request.getRequestDispatcher(url1);
				dispatcher.forward(request, response);				
			}
			
			
		}
	}
}


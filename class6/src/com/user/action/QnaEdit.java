package com.user.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.bbsQnaDAO;
import com.user.model.DTO.bbsQnaDTO;


public class QnaEdit implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/index/QnaEdit.jsp";
		RequestDispatcher rd;
		String realpath="../..";
		String subpath="..";
		
		int bbsNo=Integer.parseInt(request.getParameter("idx"));
		String[] params = new String[3];
		params[0]=request.getParameter("bbsName");
		params[1]=request.getParameter("bbsCon");
		params[2]=request.getParameter("bbsPw");
		
		if(params[1]!=null) {
			System.out.println("수정실행");
			bbsNo=0;
			String bbsName = null;
			String bbsCon = null;
			String bbsPw = null;
			
			try {
				bbsNo=Integer.parseInt(request.getParameter("idx").trim());
				bbsName=params[0].trim();
				bbsCon=params[1].trim();
				bbsPw=params[2].trim();
			} catch (NumberFormatException e) {
				response.sendRedirect("QnaEdit.com?idx="+bbsNo);
			}
			
			bbsQnaDAO dao = new bbsQnaDAO();
			int result =dao.updateOne(bbsNo,bbsName,bbsCon,bbsPw);
			System.out.println(result);
			if(result>0){
				rd=request.getRequestDispatcher("QnaEdit.com?idx="+bbsNo);
				rd.forward(request, response);
			}else {
				rd=request.getRequestDispatcher("QnaDetail.com?idx="+bbsNo);
				rd.forward(request, response);
			}
		}else {
			System.out.println("페이지만");
			bbsQnaDAO dao= new bbsQnaDAO();
			bbsQnaDTO bean = dao.selectOne(bbsNo);
			
			request.setAttribute("dto", bean);
			
			request.setAttribute("realpath",realpath );
			request.setAttribute("subpath",subpath );
			rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}
}


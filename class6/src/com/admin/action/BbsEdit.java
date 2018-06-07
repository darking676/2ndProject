package com.admin.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.bbsDAO;
import com.user.model.DTO.bbsDTO;


public class BbsEdit implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../../admin/bbs/BbsEdit.jsp";
		RequestDispatcher rd;
		String realpath="../..";
		String subpath="..";
		
		int bbsNo=Integer.parseInt(request.getParameter("idx"));
		String[] params = new String[3];
		params[0]=request.getParameter("bbsName");
		params[1]=request.getParameter("bbsCon");
		params[2]=request.getParameter("bbsW");
		
		if(params[1]!=null) {
			bbsNo=0;
			String bbsName = null;
			String bbsCon = null;
			String bbsW = null;
			
			try {
				bbsNo=Integer.parseInt(request.getParameter("idx").trim());
				bbsName=params[0].trim();
				bbsCon=params[1].trim();
				bbsW=params[2].trim();
			} catch (NumberFormatException e) {
				response.sendRedirect("BbsEdit.com?idx="+bbsNo);
			}
			
			bbsDAO dao = new bbsDAO();
			int result =dao.updateOne(bbsNo,bbsName,bbsCon,bbsW);
			System.out.println(result);
			if(result>0)
				{rd=request.getRequestDispatcher("BbsDetail.com?idx="+bbsNo);
				rd.forward(request, response);
				}else {
				rd=request.getRequestDispatcher("BbsEdit.com?idx="+bbsNo);
				rd.forward(request, response);
				}
		}else {
			bbsDAO dao= new bbsDAO();
			bbsDTO bean = dao.selectOne(bbsNo);
			
			request.setAttribute("dto", bean);
			
			request.setAttribute("realpath",realpath );
			request.setAttribute("subpath",subpath );
			rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}
}


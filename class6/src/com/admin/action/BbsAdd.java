package com.admin.action;

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
import javax.servlet.http.HttpSession;

import com.user.model.DAO.bbsDAO;
import com.user.model.DAO.memDAO;
import com.user.model.DTO.bbsDTO;
import com.user.model.DTO.memDTO;


public class BbsAdd implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../../admin/bbs/BbsList.jsp";
		String url2="../../admin/bbs/BbsAdd.jsp";
		HttpSession session = request.getSession();
		String memId = (String) session.getAttribute("sessionID");
		String param1=request.getParameter("bbsName");
		String param2=request.getParameter("bbsCon");
		
		System.out.println(param1);
		System.out.println(param2);
		
		if(param1!=null) {
		String bbsName = param1.trim();
		String bbsCon = param2.trim();
		
		bbsDAO dao = new bbsDAO();
		dao.insertOne(bbsName,bbsCon, memId);
		
		List<bbsDTO> list= dao.selectAll(1, 10);
		request.setAttribute("List", list);
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		}else {
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url2);
		dispatcher.forward(request, response);
		}
	}

}

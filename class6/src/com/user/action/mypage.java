package com.user.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.net.ns.SessionAtts;

import com.user.model.DAO.memDAO;
import com.user.model.DTO.memDTO;


public class mypage implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/member/mypage.jsp";
//		String memId=request.getParameter("id");
		HttpSession session = request.getSession();
		String memId= (String) session.getAttribute("memId");
		System.out.println("mypage¿¡¼­ "+memId);
		
		memDAO dao=new memDAO();
		List<memDTO> list=null;
		try {
			list = dao.getMyPage(memId);
			
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

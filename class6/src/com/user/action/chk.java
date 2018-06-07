package com.user.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.model.DAO.memDAO;
import com.user.model.DTO.memDTO;

public class chk implements Action{//수강신청 페이지

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/member/mypage.jsp";
		HttpSession session = request.getSession();
		String memId=request.getParameter("id");
//		String memId=(String) session.getAttribute("session");
		
		System.out.println("chk"+memId);
		memDAO dao=new memDAO();
		try {
			dao.putChk(memId);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		//mypage 기본정보
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

package com.login.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.model.DAO.memDAO;
import com.login.model.DTO.memDTO;


public class Add implements Action {//회원가입 페이지 미완성

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../login/Add.jsp";
		
		System.out.println("Add 실행");
		
		memDAO dao=new memDAO();
		memDTO member=new memDTO();
		
		member.setMemId(request.getParameter("memId"));
		member.setMemPw(request.getParameter("memPw"));
		member.setMemName(request.getParameter("memName"));
		member.setMemGen(request.getParameter("memGen"));
		member.setMemBirth(request.getParameter("memBirth"));
		member.setMemMail(request.getParameter("memMail"));
		member.setMemPnum(Integer.parseInt(request.getParameter("memPnum")));
		
		try {
			dao.addMem(member);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<memDTO> list=new ArrayList<memDTO>();
		list.add(member);
		
		request.setAttribute("list", list);
		
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

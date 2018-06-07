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


public class BbsDel implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		int bbsNo=Integer.parseInt(request.getParameter("idx"));
		bbsDAO dao = new bbsDAO();
		dao.deleteOne(bbsNo);
		
		System.out.println("½ÇÇàµÊ");
	}
}


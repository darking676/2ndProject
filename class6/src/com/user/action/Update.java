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

import com.user.model.DAO.memDAO;
import com.user.model.DTO.memDTO;


public class Update implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url="../user/member/meminfo.jsp";
		
		String memId=request.getParameter("memId");
		
		System.out.println("Update에서 "+memId);
		
		memDAO dao=new memDAO();
		memDTO member=new memDTO();
		
		member.setMemId(request.getParameter("memId"));
		member.setMemPw(request.getParameter("memPw"));
		member.setMemName(request.getParameter("memName"));
		member.setMemGen(request.getParameter("memGen"));
		
		String date = request.getParameter("memBirth");
        // 반환된 String 값을 Date로 변경한다.
        Date da = Date.valueOf(date);

		member.setMemMail(request.getParameter("memMail"));
		member.setMemPnum(Integer.parseInt(request.getParameter("memPnum")));
		try {
			dao.update(member,da);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		//수정된거 보여줌
		List<memDTO> list=null;
		try {
			list = dao.getUserInfo(memId);
			
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

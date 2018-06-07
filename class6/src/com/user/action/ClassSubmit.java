package com.user.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.model.DAO.*;
public class ClassSubmit implements Action{//������û ������


	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String memID="";
		String id=request.getParameter("id");
		String subject= request.getParameter("subject");
		PrintWriter out = response.getWriter();
		boolean result = false;
		HttpSession session = request.getSession();
		memID = (String) session.getAttribute("sessionID");
		System.out.println("�ش� ���� Ŭ������ memID : "+memID);
		if(memID != null){
			request.setCharacterEncoding("UTF-8");
			SubmitDAO dao = new SubmitDAO();
			result = dao.submitClass(memID, subject);
			if(!result){
				response.setContentType("text/html; charset=UTF-8");
				System.out.println("�̹� ��û�ϼ̽��ϴ�.");
				out.println("<script>alert('�̹� ��û�ϼ̽��ϴ�.'); location.href='../user/index';</script>");
				out.flush();
			}else{
				response.sendRedirect("../user/mypage.com");
			}
		}else if (memID == null){
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('�α��� �Ͻñ� �ٶ��ϴ�.'); location.href='../user/index';</script>");
			out.flush();
		}
		
		
	}
	
}

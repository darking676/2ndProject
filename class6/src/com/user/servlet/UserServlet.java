package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.controller.AdminList;
import com.admin.servlet.AdminServlet;
import com.login.servlet.LoginServlet;
import com.user.action.Action;
import com.user.controller.ActionList;

@WebServlet(//가장 처음으로 요청을 받음.
		urlPatterns={
				"/user/index",
				"/user/index.com",
				"*.com",
				"/Login",
				"/Admin"
		})
		
public class UserServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
		String list=null;
		String temp=request.getServletPath();//요청주소를 확인
		String temp4=request.getRequestURI();//임시 확인용
		String temp5=request.getParameter("idx");
//		String id=request.getParameter("id");
		HttpSession session = request.getSession();
		String id=(String) session.getAttribute("sessionID");
		System.out.println("유저"+temp+temp4+temp5+id);//임시 확인용
		
		String[] temp2=temp.split("/");//guest,member,admin 구분을 위함
		int leng=0;
		if(temp2[2].contains(".com")){//뒷부분 주소인 .com을 제거
			leng=temp2[2].length()-4;
			list=temp2[2].substring(0,leng);
		}
		System.out.println("list: "+list);
		// 기본 사이트 방문 시 default 커맨드는 main으로.
		if(list==null||list.equals("index")){
			list="main";
		}
		System.out.println("Servlet : list값 - " + list);//확인용 출력문
		if(temp2[1].equals("user")){//user로 시작하면
			ActionList al=new ActionList();//user의 actionList를 불러온다.
			Action action=al.getAction(list,id);//actionList에서 원하는 행동을 찾는다.
			
			if(action!=null){
				action.execute(request, response);//해당하는 action으로 보낸다.
			}
		}else if(temp2[1].equals("Login")){//login으로 시작하면
			System.out.println("login servlet 실행");
			LoginServlet ls=new LoginServlet();//login servlet 객체 생성
			ls.service(request, response);//login servlet으로 요청을 넘긴다.
		}else if(temp2[1].equals("admin")){//admin으로 시작하면
			System.out.println("admin servlet 실행");
			AdminServlet dl=new AdminServlet();//admin servlet 객체 생성
			dl.service(request, response);//Admin servlet으로 요청을 넘긴다.
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
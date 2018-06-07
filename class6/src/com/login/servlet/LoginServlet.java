package com.login.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.action.Action;
import com.login.controller.ActionList;

//userservlet에서 login요청을 받으면 이쪽 servlet으로 요청을 패스함.
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("login servlet");
		String list=null;
		String temp=request.getServletPath();//요청 내용확인
		
		String memId = request.getParameter("memId");//id 받음
		System.out.println(memId+"아이디");
		String memPw = request.getParameter("memPw");//pw 받음
		System.out.println(memPw+"비밀번호");
		
		
		System.out.println("temp-"+temp);
		String[] temp2=temp.split("/");//guest,member,admin 구분을 위함
		int leng=0;
		if(temp2[2].contains(".com")){//.com 제거문
			leng=temp2[2].length()-4;
			list=temp2[2].substring(0,leng);
		}
		System.out.println("list: "+list);
		// 기본 사이트 방문 시 default 커맨드는 main으로.
		if(list==null||list.equals("index")){
			list="main";
		}
		System.out.println("Servlet : list값 - " + list);			
		
		if(temp2[1].equals("user")){//user로 시작하면 
			
		}else if(temp2[1].equals("Login")){//login으로 시작하면 
			ActionList al=new ActionList();
			Action action=al.getAction(list);
			
			if(action!=null){
				action.execute(request, response);
			}
		}else if(temp2[1].equals("admin")){//admin으로 시작하면
			
		}else{
			
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}


package com.admin.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.action.Action;
import com.admin.controller.AdminList;
import com.admin.controller.BbsMainController;
import com.admin.controller.ClaMainController;
import com.admin.controller.LecMainController;
import com.admin.controller.StuMainController;


//userservlet에서 login요청을 받으면 이쪽 servlet으로 요청을 패스함.
public class AdminServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("admin servlet");
		String list=null;
		String temp=request.getServletPath();//요청 내용확인
		
		System.out.println(temp);
		
		String memId = request.getParameter("memId");//id 받음
		System.out.println(memId+"아이디");
		
		String[] temp2=temp.split("/");//admin 구분을 위함
		
		int leng=0;
		if(temp2[2].contains(".com")){//.com 제거문
			leng=temp2[2].length()-4;
			list=temp2[2].substring(0,leng);
		}else if(temp2[3].contains(".com")) {
			leng=temp2[3].length()-4;
			list=temp2[3].substring(0,leng);
		}
		System.out.println("list: "+list);
		// 기본 사이트 방문 시 default 커맨드는 main으로.
		if(list==null||list.equals("index")){
			list="main";
		}
		System.out.println("Servlet : list값 - " + list);			
		
		if(temp2[1].equals("admin")){//admin으로 시작하면
			if(list=="main") {
				//main
				AdminList al=new AdminList();
				Action action=al.getAction(list);
				
				if(action!=null){
					try {
						action.execute(request, response);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}else if(temp2[3]!=null) {
				if(temp2[2].equals("class")) {
					ClaMainController cmc=new ClaMainController();
					cmc.service(request, response);
				}else if(temp2[2].equals("lec")) {
					LecMainController lmc=new LecMainController();
					lmc.service(request, response);
				}else if(temp2[2].equals("stu")) {
					StuMainController smc=new StuMainController();
					smc.service(request, response);
				}else if(temp2[2].equals("bbs")) {
					AdminList al=new AdminList();
					Action action=al.getAction(list);
					
					if(action!=null){
						try {
							action.execute(request, response);
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}else {
					//default 메인
					AdminList al=new AdminList();
					Action action=al.getAction(list);
					
					if(action!=null){
						try {
							action.execute(request, response);
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}else {
				//default 메인
				AdminList al=new AdminList();
				Action action=al.getAction(list);
				
				if(action!=null){
					try {
						action.execute(request, response);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}


package com.admin.controller;

import com.admin.action.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LecMainController extends HttpServlet implements Servlet {

    protected void doProcess(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        String RequestURI=request.getRequestURI();
        String contextPath=request.getContextPath();
        String command=RequestURI.substring(contextPath.length());
        
        System.out.println(RequestURI);
        System.out.println(contextPath);
        System.out.println(command);
        
        LecActionForward forward = null;
        LecAction action = null;

        if(command.equals("/admin/lec/lecList.com")){
            action = new LecListAction();
            try{
                forward = action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/lec/LecAddAction.com")){
            action = new LecAddAction();
            try{
                forward=action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/lec/lecInput.com")){
            action = new LecDetailAction();
            try {
                forward=action.execute(request, response );
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(command.equals("/admin/lec/lecStuInput.com")){
            action = new LecStuAction();
            try{
                forward=action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/lec/LecStuUpdate.com")){
            action = new LecStuUpdateAction();
            try{
                forward=action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/class/ClaDeleteAction.cla")){
//            action = new ClaDeleteAction();
//            try{
//                forward=action.execute(request, response);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
        }else if(command.equals("/BoardList.bo")){
//            act = new BoardListAction();
//            try{
//                forward=act.execute(request, response);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
        }else if(command.equals("/BoardDetailAction.bo")){
//            act = new BoardDetailAction();
//            try{
//                forward=act.execute(request, response);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
        }
        if(forward.isRedirect()){
        	System.out.println("forward getpath -- "+forward.getPath());
            response.sendRedirect(forward.getPath());
        }else{
        	System.out.println("forward getpath -- "+forward.getPath());
            RequestDispatcher dispatcher=
                    request.getRequestDispatcher(forward.getPath());
            dispatcher.forward(request, response);
        }

    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
}

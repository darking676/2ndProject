package com.admin.controller;

import com.admin.action.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StuMainController extends HttpServlet implements Servlet {

    protected void doProcess(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        request.setCharacterEncoding("utf-8");
        System.out.println("controller �젒�냽");
        String RequestURI=request.getRequestURI();
        String contextPath=request.getContextPath();
        String command=RequestURI.substring(contextPath.length());
        StuActionForward forward = null;
        StuAction action = null;
        if(command.equals("/admin/stu/stuGraInputList.com")){
            action = new StuGraInputListAction();
            try{
                forward = action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/stu/stuGraInput.com")){
            action = new StuGraInputAction();
            try{
                forward = action.execute(request, response);
            } catch (Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/stu/stuChkList.com")){
            action = new StuChkListAction();
            try{
                forward = action.execute(request, response);
            } catch (Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/stu/stuChkUpdate.com")){
            action = new StuChkUpdateAction();
            try{
                forward = action.execute(request, response);
            } catch (Exception e){
                e.printStackTrace();
            }
        }

        if(forward.isRedirect()){
            response.sendRedirect(forward.getPath());
        }else{
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

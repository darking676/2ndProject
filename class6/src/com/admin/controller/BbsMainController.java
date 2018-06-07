package com.admin.controller;

import com.admin.action.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BbsMainController extends HttpServlet implements Servlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
        String RequestURI=request.getRequestURI();
        String contextPath=request.getContextPath();
        String command=RequestURI.substring(contextPath.length());
        ClaActionForward forward = null;
        ClaAction action = null;

        if(command.equals("/admin/bbs/BbsList.com")){
        	Action act=new BbsList();
        	if(act!=null){
				try {
					act.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}//해당하는 action으로 보낸다.
			}
        }else if(command.equals("/admin/class/claList.com")){
            System.out.println("claList �떎�뻾");
            action = new ClaListAction();
            try{
                forward = action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }else if(command.equals("/admin/class/BoardDelete.com")){
            forward=new ClaActionForward();
            forward.setRedirect(false);
            forward.setPath("./board/qna_board_delete.jsp");
        }else if(command.equals("/admin/class/ClaAddAction.com")){
            action = new ClaAddAction();
            try {
                forward=action.execute(request, response );
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(command.equals("/admin/class/ClaDeleteAction.com")){
            action = new ClaDeleteAction();
            try{
                forward=action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        //�쟾�넚諛⑹떇泥섎━  => forward諛⑹떇 �삉�뒗 sendRedirect諛⑹떇 �꽑�깮
       /* if(forward.isRedirect()){
            response.sendRedirect(forward.getPath());
        }else{
            RequestDispatcher dispatcher=
                    request.getRequestDispatcher(forward.getPath());
            dispatcher.forward(request, response);
        }*/
    }

    
}

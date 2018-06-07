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

public class ClaMainController extends HttpServlet implements Servlet {

    protected void doProcess(HttpServletRequest request, HttpServletResponse response)
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

        if(command.equals("/admin/class/claWrite.com")){
            forward= new ClaActionForward();
            forward.setRedirect(false);
            forward.setPath("./classInput.jsp");
            System.out.println("forward = "+forward.getPath());

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
        }else if(command.equals("/BoardModify.bo")){
//            act = new BoardModifyView();
//            try{
//                forward=act.execute(request, response);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
        }else if(command.equals("/admin/class/ClaAddAction.com")){
            action = new ClaAddAction();
            try {
                forward=action.execute(request, response );
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else if(command.equals("/BoardReplyView.bo")){
//            act = new BoardReplyAction();
//            try{
//                forward=act.execute(request, response);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
        }else if(command.equals("/BoardModifyAction.bo")){
//            act = new BoardModifyAction();
//            try{
//                forward=act.execute(request, response);
//            }catch(Exception e){
//                e.printStackTrace();
//            }
        }else if(command.equals("/admin/class/ClaDeleteAction.com")){
            action = new ClaDeleteAction();
            try{
                forward=action.execute(request, response);
            }catch(Exception e){
                e.printStackTrace();
            }
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
        //�쟾�넚諛⑹떇泥섎━  => forward諛⑹떇 �삉�뒗 sendRedirect諛⑹떇 �꽑�깮
        if(forward.isRedirect()){
            response.sendRedirect(forward.getPath());
        }else{
            RequestDispatcher dispatcher=
                    request.getRequestDispatcher(forward.getPath());
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ArrayList<ClaDto> list = null;
//        String uri = null;
//        try {
//            ClaDao dao = new ClaDao(request);
//            uri = request.getRequestURI();
//            System.out.println(request.getRequestURI()); // /admin/class/claList.cla
//
//            if (uri.equals("/admin/class/claList.cla")) {
//                list = dao.selectAll();
//            }else if(uri.equals("/admin/class/claAdd.cla")){
//                list = dao.classInsert();
//            }else{
//                System.out.println("uri null");
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        request.setAttribute("articlelist", list);
//        System.out.println("articlelist"+list);
//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("classList.jsp");
//        requestDispatcher.forward(request, response);
        doProcess(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
}

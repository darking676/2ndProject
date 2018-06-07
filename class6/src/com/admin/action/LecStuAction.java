package com.admin.action;

import com.admin.model.LecDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class LecStuAction implements LecAction {

    @Override
    public LecActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	HttpSession session = request.getSession(false);
        String ses = (String) session.getAttribute("memcate");
        System.out.println("Action session : "+ses);
        
        boolean result = false;
        
        
        if(!(ses.equals("행정")) || ses == null){
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('권한이 없습니다.');");
            out.println("location.href='../index.com';");
            out.println("</script>");
            out.close();
            return null;
        }
        
    	LecDao lecDao = new LecDao();
        List list = new ArrayList();
        list = lecDao.lecStuList();

        request.setAttribute("articleList", list);
        LecActionForward forward = new LecActionForward();
        forward.setRedirect(false);
        forward.setPath("./lecStuInput.jsp");

        return forward;
    }
}

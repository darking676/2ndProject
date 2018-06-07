package com.admin.action;

import com.admin.model.ClaDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

public class ClaDeleteAction implements ClaAction{

    @Override
    public ClaActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ClaActionForward forward = new ClaActionForward();
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession(false);
        String ses = (String) session.getAttribute("sessionId");
        System.out.println("ClaDeleteAction session : "+ses);

        boolean result=false;
        boolean usercheck=false;

        int num = Integer.parseInt(request.getParameter("selDel"));
        System.out.println("seldel = "+num);

        ClaDao claDao = new ClaDao();
        usercheck=claDao.isClassWriter(num, ses);

        if(!usercheck){
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('권한이 없습니다.');");
            out.println("location.href='./claList.com';");
            out.println("</script>");
            out.close();
            return null;
        }

        result=claDao.classDelete(num);
        if(!result){
            return null;
        }

        forward.setRedirect(true);
        forward.setPath("./claList.com");
        return forward;
    }
}

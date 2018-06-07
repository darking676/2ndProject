package com.admin.action;

import com.admin.model.LecDao;
import com.admin.model.LecDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

public class LecStuUpdateAction implements LecAction {
    @Override
    public LecActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	System.out.println("LecActionForward 실행");
        request.setCharacterEncoding("utf-8");
        LecActionForward forward = new LecActionForward();
        HttpSession session = request.getSession(false);
        String ses = (String) session.getAttribute("sessionID");
        System.out.println("ClaDeleteAction session : "+ses);

        boolean result = false;

        LecDao lecDao = new LecDao();
        LecDto lecDto = new LecDto();

        boolean usercheck = false;
        if("T1".equals(ses) || null == ses){
        	usercheck = false;
        }else{
        	usercheck = true;
        }
        

        if(!usercheck){
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('권한이 없습니다..');");
            out.println("location.href='../index.com';");
            out.println("</script>");
            out.close();
            return null;
        }

        try{
            lecDto.setSelectList(request.getParameterValues("chkbox"));
            lecDto.setLecStuName(request.getParameter("lecSelect"));

            result = lecDao.lecStuUpdate(lecDto);
            if(!result){
                System.out.println("寃뚯떆�뙋 �닔�젙 �떎�뙣");
                return null;
            }
            System.out.println("寃뚯떆�뙋 �닔�젙 �셿猷�");

            forward.setRedirect(true);
            forward.setPath("./lecStuInput.com");
            return forward;
        }catch(Exception ex){
            ex.printStackTrace();
        }

        return null;
    }
}

package com.admin.action;

import com.admin.model.StuDao;
import com.admin.model.StuDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

public class StuChkUpdateAction implements StuAction {
    @Override
    public StuActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");


        StuActionForward forward = new StuActionForward();

        HttpSession session = request.getSession(false);
        String ses = (String) session.getAttribute("memcate");
        System.out.println("StuUpdateAction session : "+ses);

        boolean result = false;

        StuDao stuDao = new StuDao();
        StuDto stuDto = new StuDto();


        if("강사".equals(ses) || ses == null){
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('권한이 없습니다.');");
            out.println("location.href='../index.com';");
            out.println("</script>");
            out.close();
            return null;
        }

        try{
            stuDto.setSelectList(request.getParameterValues("stuchk"));
            stuDto.setTeaId(request.getParameter("chkselect"));
            stuDto.setIsNull(request.getParameterValues("textbox"));
            result = stuDao.chkUpdate(stuDto);
            if(!result){
                System.out.println("異쒓껐 �닔�젙 �떎�뙣");
                return null;
            }
            System.out.println("異쒓껐 �닔�젙 �셿猷�");

            forward.setRedirect(true);
            forward.setPath("./stuChkList.com");
            return forward;
        }catch(Exception ex){
            ex.printStackTrace();
        }

        return null;
    }
}

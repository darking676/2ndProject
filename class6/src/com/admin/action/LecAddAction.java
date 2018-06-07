package com.admin.action;

import com.admin.model.LecDao;
import com.admin.model.LecDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LecAddAction implements LecAction {

    @Override
    public LecActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        LecDao lecDao = new LecDao();
        LecDto lecDto = new LecDto();
        LecActionForward forward = new LecActionForward();
        SimpleDateFormat date = new SimpleDateFormat("yy-MM-dd");
        boolean result = false;
        HttpSession session = request.getSession(false);
        String ses = (String) session.getAttribute("memcate");
        System.out.println("Action session : "+ses);
        
        
        
        if("행정".equals(ses) || ses == null){
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.println("<script>");
            out.println("alert('권한이 없습니다.');");
            out.println("location.href='../index.com';");
            out.println("</script>");
            out.close();
            return null;
        }
        
        
        try {
            System.out.println("Name : " + request.getParameter("InputLecName"));
            System.out.println("Con : " + request.getParameter("InputLecCon"));
            System.out.println("tea : " + request.getParameter("tea"));
            System.out.println("cla : " + request.getParameter("cla"));
            System.out.println("clanum : " + request.getParameter("InputClassNum"));
            System.out.println("start : " + request.getParameter("startdate"));
            System.out.println("end : " + request.getParameter("enddate"));

            Date utilDate = date.parse(request.getParameter("startdate"));
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            lecDto.setLecStart(sqlDate);

            utilDate = date.parse(request.getParameter("enddate"));
            sqlDate = new java.sql.Date(utilDate.getTime());
            lecDto.setLecEnd(sqlDate);

            lecDto.setLecName(request.getParameter("InputLecName"));
            lecDto.setLecCon(request.getParameter("InputLecCon"));
            lecDto.setTeaId(request.getParameter("tea"));
            lecDto.setClassAddress(request.getParameter("cla"));
            lecDto.setClassNum(Integer.parseInt(request.getParameter("InputClassNum")));

            result = lecDao.lecInsert(lecDto);

            if (result == false) {
                return null;
            }

            forward.setRedirect(true);
            forward.setPath("./lecList.com");
            return forward;
        } catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
}

package com.admin.action;

import com.admin.model.StuDao;
import com.admin.model.StuDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

public class StuGraInputAction implements StuAction {
    @Override
    public StuActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        StuActionForward forward = new StuActionForward();

        HttpSession session = request.getSession(false);
        String ses = (String) session.getAttribute("memcate");
        System.out.println("graInput session : "+ses);

        boolean result = false;

        StuDao stuDao = new StuDao();
        StuDto stuDto = new StuDto();

//        if("강사".equals(ses) || ses == null){
//            response.setContentType("text/html;charset=euc-kr");
//            PrintWriter out=response.getWriter();
//            out.println("<script>");
//            out.println("alert('권한이 없습니다.');");
//            out.println("location.href='./stuGraInputList.com';");
//            out.println("</script>");
//            out.close();
//            return null;
//        }

        try{
            String[] memIds = request.getParameterValues("groupMemId");
            String[] graJava = request.getParameterValues("groupJava");
            String[] graWebs = request.getParameterValues("groupWeb");
            String[] graDbs = request.getParameterValues("groupDb");

            for(int i = 0; i < memIds.length; i++){
                if(graJava[i].equals("") && graWebs[i].equals("") && graDbs[i].equals("")){
                    stuDao.stuNullInsert(memIds[i]);
                    System.out.println("이거 실행");
                }
                stuDto.setMemId(memIds[i]);
                if(graJava[i].equals("")) stuDto.setGraJava(0);
                    else stuDto.setGraJava(Integer.parseInt(graJava[i]));
                if(graWebs[i].equals("")) stuDto.setGraweb(0);
                    else stuDto.setGraweb(Integer.parseInt(graWebs[i]));
                if(graDbs[i].equals("")) stuDto.setGradb(0);
                    else stuDto.setGradb(Integer.parseInt(graDbs[i]));
                result = stuDao.stuGraUpdate(stuDto);
                if(!result){
                    return null;
                }
            }
            forward.setRedirect(true);
            forward.setPath("./stuGraInputList.com");
            return forward;
        } catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
}

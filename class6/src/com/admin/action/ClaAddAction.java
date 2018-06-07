package com.admin.action;

import com.admin.model.ClaDao;
import com.admin.model.ClaDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClaAddAction implements ClaAction{
    public ClaActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
        ClaDao cladao = new ClaDao();
        ClaDto cladto = new ClaDto();
        ClaActionForward forward=new ClaActionForward();

        boolean result=false;
        try{
            cladto.setClassName(request.getParameter("InputClaName"));
            cladto.setClassAddress(request.getParameter("InputClaAddress"));
            result=cladao.classInsert(cladto);

            if(result==false){
                return null;
            }

            forward.setRedirect(true);
            forward.setPath("./claList.com");
            return forward;

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
}

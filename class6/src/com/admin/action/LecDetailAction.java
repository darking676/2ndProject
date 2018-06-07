package com.admin.action;

import com.admin.model.LecDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class LecDetailAction implements LecAction {
    @Override
    public LecActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");

        LecDao lecdao = new LecDao();
        List list = new ArrayList();

        list = lecdao.getDetail();

        if(list==null){
            return null;
        }

        request.setAttribute("articleList", list);
        LecActionForward forward = new LecActionForward();
        forward.setRedirect(false);
        forward.setPath("./lecInput.jsp");
        return forward;
    }
}

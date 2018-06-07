package com.admin.action;


import com.admin.model.LecDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;


public class LecListAction implements LecAction {

    public LecActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        LecDao dao = new LecDao();
        List list = new ArrayList();
        list = dao.selectAll();
        request.setAttribute("articleList", list);
        LecActionForward forward = new LecActionForward();
        forward.setRedirect(false);
        forward.setPath("./lecList.jsp");
        return forward;
    }
}


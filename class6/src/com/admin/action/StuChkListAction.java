package com.admin.action;

import com.admin.model.StuDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class StuChkListAction implements StuAction {
    @Override
    public StuActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        StuDao dao = new StuDao();
        List list = new ArrayList();
        int page = 1;
        int limit = 10;

        if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
        int listcount=dao.getChkListCount(); 

        list = dao.stuChkList(page, limit);

        int maxpage=(int)((double)listcount/limit+0.95); 
        int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
        int endpage = maxpage;

        if (endpage>startpage+10-1) endpage=startpage+10-1;

        request.setAttribute("page", page);		  //�쁽�옱 �럹�씠吏� �닔.
        request.setAttribute("maxpage", maxpage); //理쒕� �럹�씠吏� �닔.
        request.setAttribute("startpage", startpage); //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 泥� �럹�씠吏� �닔.
        request.setAttribute("endpage", endpage);     //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 �걹 �럹�씠吏� �닔.
        request.setAttribute("listcount",listcount); //湲� �닔.
        request.setAttribute("articleList", list);

        StuActionForward forward = new StuActionForward();
        forward.setRedirect(false);
        forward.setPath("./stuChkList.jsp");

        return forward;
    }
}

package com.admin.action;

import com.admin.model.StuDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class StuGraInputListAction implements StuAction {
    @Override
    public StuActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        StuDao stuDao = new StuDao();
        List list = new ArrayList();

        int page = 1;
        int limit = 10;

        if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
        int listcount=stuDao.getListCount(); //珥� 由ъ뒪�듃 �닔瑜� 諛쏆븘�샂.
        list = stuDao.inputList(page, limit);

        int maxpage=(int)((double)listcount/limit+0.95); //0.95瑜� �뜑�빐�꽌 �삱由� 泥섎━.
        int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
        int endpage = maxpage;

        if (endpage>startpage+10-1) endpage=startpage+10-1;

        request.setAttribute("page", page);		 
        request.setAttribute("maxpage", maxpage); //理쒕� �럹�씠吏� �닔.
        request.setAttribute("startpage", startpage); //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 泥� �럹�씠吏� �닔.
        request.setAttribute("endpage", endpage);     //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 �걹 �럹�씠吏� �닔.
        request.setAttribute("listcount",listcount); //湲� �닔.

        request.setAttribute("articleList", list);
        StuActionForward forward = new StuActionForward();

        forward.setRedirect(false);
        forward.setPath("./StuGraInputList.jsp");
        return forward;
    }
}

package com.admin.action;

import com.admin.model.ClaDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class ClaListAction implements ClaAction{

    @Override
    public ClaActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ClaDao dao = new ClaDao();
        List list = new ArrayList();

        int page = 1;
        int limit = 10;

        if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
        System.out.println("claaction 실행 : ");
		int listcount=dao.getListCount(); //珥� 由ъ뒪�듃 �닔瑜� 諛쏆븘�샂.
        list = dao.selectAll(page, limit);

        //珥� �럹�씠吏� �닔.
        int maxpage=(int)((double)listcount/limit+0.95); //0.95瑜� �뜑�빐�꽌 �삱由� 泥섎━.
        //�쁽�옱 �럹�씠吏��뿉 蹂댁뿬以� �떆�옉 �럹�씠吏� �닔(1, 11, 21 �벑...)
        int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
        //�쁽�옱 �럹�씠吏��뿉 蹂댁뿬以� 留덉�留� �럹�씠吏� �닔.(10, 20, 30 �벑...)
        int endpage = maxpage;

        if (endpage>startpage+10-1) endpage=startpage+10-1;

        request.setAttribute("page", page);		  //�쁽�옱 �럹�씠吏� �닔.
        request.setAttribute("maxpage", maxpage); //理쒕� �럹�씠吏� �닔.
        request.setAttribute("startpage", startpage); //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 泥� �럹�씠吏� �닔.
        request.setAttribute("endpage", endpage);     //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 �걹 �럹�씠吏� �닔.
        request.setAttribute("listcount",listcount); //湲� �닔.
        request.setAttribute("articleList", list);





        ClaActionForward forward= new ClaActionForward();
        forward.setRedirect(false);
        forward.setPath("./classList.jsp");
        return forward;
    }
}

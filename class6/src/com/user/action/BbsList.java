package com.user.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.DAO.bbsDAO;
import com.user.model.DTO.bbsDTO;


public class BbsList implements Action {//mypage 

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
		String url="../user/index/BbsList.jsp";
		String keyField=request.getParameter("keyField");
		String keyWord=request.getParameter("keyWord");
		
		System.out.println("BbsList");
		
		bbsDAO dao=new bbsDAO();
		
		int page = 1;
        int limit = 10;

        if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
        
        int listcount = 0;
		
//        if(keyField != null&&keyWord != null) {
//			listcount=dao.getSearchChkListCount(keyField, keyWord);
//			System.out.println("이게 실행됨?");
//			list=dao.getMemberlist(keyField, keyWord, page, limit);
//			request.setAttribute("List", list);
//		}else{
//			listcount=dao.getChkListCount();
//	        list = dao.getBbsList(page, limit);
//	        request.setAttribute("List", list);
//		}
        List list= new ArrayList();
        
        if(keyField != null&&keyWord != null) {
        	listcount=dao.getChkListCount();
        	list = dao.selectAll(page, limit);
//        	list=dao.getMemberlist(keyField, keyWord);
        	request.setAttribute("List", list);
        	System.out.println("작동 안되겠지");
        }else{
        	listcount = dao.getChkListCount();
        	list = dao.selectAll(page, limit);
        	request.setAttribute("List", list);
        }
        int maxpage=(int)((double)listcount/limit+0.95); //0.95瑜� �뜑�빐�꽌 �삱由� 泥섎━.
        int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
        int endpage = maxpage;
        
        if (endpage>startpage+10-1) endpage=startpage+10-1;
        System.out.println("list size -- "+list.size());
        request.setAttribute("page", page);		  //�쁽�옱 �럹�씠吏� �닔.
        request.setAttribute("maxpage", maxpage); //理쒕� �럹�씠吏� �닔.
        request.setAttribute("startpage", startpage); //�쁽�옱 �럹�씠吏��뿉 �몴�떆�븷 泥� �럹�씠吏� �닔.
        request.setAttribute("endpage", endpage);
		request.setAttribute("List", list);
		String realpath="../..";
		String subpath="..";
		request.setAttribute("realpath",realpath );
		request.setAttribute("subpath",subpath );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

package com.admin.controller;


import com.admin.action.Action;
import com.admin.action.BbsAdd;
import com.admin.action.BbsDel;
import com.admin.action.BbsDetail;
import com.admin.action.BbsEdit;
import com.admin.action.BbsList;
import com.admin.action.main;

public class AdminList {
	
	public Action getAction(String list){//���ϴ� ��û�� ã�Ƽ� ���� �����ش�.
		Action action=null;
			// �α�.			
			System.out.println("ActionList : "+list);
			
		if(list.equals("main")){
			action=new main();
		}else if(list.equals("BbsList")){
			action=new BbsList();
		}else if(list.equals("BbsAdd")){
			action=new BbsAdd();
		}else if(list.equals("BbsDetail")){
			action=new BbsDetail();
		}else if(list.equals("BbsDel")){
			action=new BbsDel();
		}else if(list.equals("BbsEdit")){
			action=new BbsEdit();
		}/*else if(list.equals("QnaList")){
			action=new QnaList();
		}else if(list.equals("QnaAdd")){
			action=new QnaAdd();
		}else if(list.equals("QnaDetail")){
			action=new QnaDetail();
		}else if(list.equals("QnaDel")){
			action=new QnaDel();
		}else if(list.equals("QnaEdit")){
			action=new QnaEdit();
		}*/else {
			action=new main();//�⺻���� ������ ����
		}
		return action;
	}

}

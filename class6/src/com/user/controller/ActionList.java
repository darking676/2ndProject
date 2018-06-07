package com.user.controller;

import com.user.action.Action;
import com.user.action.Android;
import com.user.action.BbsAdd;
import com.user.action.BbsDel;
import com.user.action.BbsDetail;
import com.user.action.BbsEdit;
import com.user.action.BbsList;
import com.user.action.Bigdata;
import com.user.action.Clanguage;
import com.user.action.ClassSubmit;
import com.user.action.CompanyChart;
import com.user.action.Intro;
import com.user.action.Java;
import com.user.action.LecIntro;
import com.user.action.QnaAdd;
import com.user.action.QnaDel;
import com.user.action.QnaEdit;
import com.user.action.QnaList;
import com.user.action.QnaPw;
import com.user.action.QnaPwNull;
import com.user.action.Update;
import com.user.action.chk;
import com.user.action.main;
import com.user.action.memBbs;
import com.user.action.memBbsD;
import com.user.action.memUpdate;
import com.user.action.memInfo;
import com.user.action.mypage;
import com.user.action.tea;
import com.user.action.way;


public class ActionList {
	
	public Action getAction(String list,String id){//���ϴ� ��û�� ã�Ƽ� ���� �����ش�.
		Action action=null;
			// �α�.			
			System.out.println("ActionList : "+list);
		if(list.equals("main")){
			action=new main();
		}else if(list.equals("Intro")){//��Ʈķ���������� or �Ұ�
			action=new Intro();
		}else if(list.equals("CompanyChart")){//������
			action=new CompanyChart();
		}else if(list.equals("tea")){//������
			action=new tea();
		}else if(list.equals("way")){//ã�ƿ��±�
			action=new way();
		}else if(list.equals("LecIntro")){//���ǼҰ�
			action=new LecIntro();
		}else if(list.equals("Java")){//�ڹ�
			action=new Java();
		}else if(list.equals("submitclass")){//�ڹ�
			action=new ClassSubmit();
		}else if(list.equals("Clanguage")){//c���
			action=new Clanguage();
		}else if(list.equals("Bigdata")){//������
			action=new Bigdata();
		}else if(list.equals("Android")){//�ȵ���̵�
			action=new Android();
		}else if(list.equals("mypage")&&id != null){//mypage 
			action=new mypage();
		}else if(list.equals("memInfo")){//ȸ������
			action=new memInfo();
		}else if(list.equals("memUpdate")){//ȸ����������ȭ��
			action=new memUpdate();
		}else if(list.equals("memBbs")){//ȸ���Խ���
			action=new memBbs();
		}else if(list.equals("memBbsD")){//ȸ���Խ��� ������
			action=new memBbsD();
		}else if(list.equals("chk")){//�⼮üũ
			action=new chk();
		}else if(list.equals("Update")){//ȸ����������
			action=new Update();
		}else if(list.equals("BbsList")){//�������׸���Ʈ
			action=new BbsList();
		}else if(list.equals("BbsAdd")){//���������߰�
			action=new BbsAdd();
		}else if(list.equals("BbsDetail")){//�������� ������
			action=new BbsDetail();
		}else if(list.equals("BbsDel")){//�������� ����
			action=new BbsDel();
		}else if(list.equals("BbsEdit")){//�������� ����
			action=new BbsEdit();
		}else if(list.equals("QnaList")){//�������� ����
			action=new QnaList();
		}else if(list.equals("QnaAdd")){//�������� ����
			action=new QnaAdd();
		}else if(list.equals("QnaDel")){//�������� ����
			action=new QnaDel();
		}else if(list.equals("QnaEdit")){//�������� ����
			action=new QnaEdit();
		}else if(list.equals("QnaPw")){//�������� ����
			action=new QnaPw();
		}else if(list.equals("QnaPwNull")){//�������� ����
			action=new QnaPwNull();
		}else {
			action=new main();//�⺻���� ������ ����
		}
		return action;
	}
}
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
	
	public Action getAction(String list,String id){//원하는 요청을 찾아서 값을 돌려준다.
		Action action=null;
			// 로그.			
			System.out.println("ActionList : "+list);
		if(list.equals("main")){
			action=new main();
		}else if(list.equals("Intro")){//비트캠프구로지점 or 소개
			action=new Intro();
		}else if(list.equals("CompanyChart")){//조직도
			action=new CompanyChart();
		}else if(list.equals("tea")){//강사진
			action=new tea();
		}else if(list.equals("way")){//찾아오는길
			action=new way();
		}else if(list.equals("LecIntro")){//강의소개
			action=new LecIntro();
		}else if(list.equals("Java")){//자바
			action=new Java();
		}else if(list.equals("submitclass")){//자바
			action=new ClassSubmit();
		}else if(list.equals("Clanguage")){//c언어
			action=new Clanguage();
		}else if(list.equals("Bigdata")){//빅데이터
			action=new Bigdata();
		}else if(list.equals("Android")){//안드로이드
			action=new Android();
		}else if(list.equals("mypage")&&id != null){//mypage 
			action=new mypage();
		}else if(list.equals("memInfo")){//회원정보
			action=new memInfo();
		}else if(list.equals("memUpdate")){//회원정보수정화면
			action=new memUpdate();
		}else if(list.equals("memBbs")){//회원게시판
			action=new memBbs();
		}else if(list.equals("memBbsD")){//회원게시판 디테일
			action=new memBbsD();
		}else if(list.equals("chk")){//출석체크
			action=new chk();
		}else if(list.equals("Update")){//회원정보수정
			action=new Update();
		}else if(list.equals("BbsList")){//공지사항리스트
			action=new BbsList();
		}else if(list.equals("BbsAdd")){//공지사항추가
			action=new BbsAdd();
		}else if(list.equals("BbsDetail")){//공지사항 디테일
			action=new BbsDetail();
		}else if(list.equals("BbsDel")){//공지사항 삭제
			action=new BbsDel();
		}else if(list.equals("BbsEdit")){//공지사항 수정
			action=new BbsEdit();
		}else if(list.equals("QnaList")){//공지사항 수정
			action=new QnaList();
		}else if(list.equals("QnaAdd")){//공지사항 수정
			action=new QnaAdd();
		}else if(list.equals("QnaDel")){//공지사항 수정
			action=new QnaDel();
		}else if(list.equals("QnaEdit")){//공지사항 수정
			action=new QnaEdit();
		}else if(list.equals("QnaPw")){//공지사항 수정
			action=new QnaPw();
		}else if(list.equals("QnaPwNull")){//공지사항 수정
			action=new QnaPwNull();
		}else {
			action=new main();//기본으로 메인을 실행
		}
		return action;
	}
}

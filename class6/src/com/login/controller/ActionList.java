package com.login.controller;

import com.login.action.Action;
import com.login.action.Add;
import com.login.action.AddForm;
import com.login.action.LoginAction;
import com.login.action.Logout;
import com.login.action.findForm;
import com.login.action.idChk;
import com.login.action.idFind;
import com.login.action.loginForm;
import com.login.action.pwFind;

public class ActionList {
	
	public Action getAction(String list){
		Action action=null;
			// 로그.			
			System.out.println("ActionList : "+list);
			
		if(list.equals("LoginForm")){//로그인 페이지
			action=new loginForm();
		}else if(list.equals("AddForm")){//회원가입 페이지
			action=new AddForm();
		}else if(list.equals("findForm")){//id,pw 찾는 체이지
			action=new findForm();
		}else if(list.equals("idChk")){//중복검사 페이지
			action=new idChk();
		}else if(list.equals("Login")){//id,pw검사후 로그인승인 페이지
			action=new LoginAction();
		}else if(list.equals("Logout")){//로그아웃 페이지
			action=new Logout();
		}else if(list.equals("Add")){//로그아웃 페이지
			action=new Add();
		}else if(list.equals("idFind")){//로그아웃 페이지
			action=new idFind();
		}else if(list.equals("pwFind")){//로그아웃 페이지
			action=new pwFind();
		}
		return action;
	}
}

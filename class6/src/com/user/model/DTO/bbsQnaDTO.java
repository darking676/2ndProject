package com.user.model.DTO;

import java.sql.Date;

public class bbsQnaDTO {
	private int qnaNo;			// 글번호(20)
	private String qnaPw;		// 패스워드(20) ,get data - 삭제 고려 중
	private String qnaCate;		// 분류(20)
	private String qnaName;		// 글제목(100)
	private String qnaCon;		// 글내용(long)
	private String qnaW;		// 회원ID(20) ,get data
	private Date qnaIpD;		// 입력일자
	private int QnaView;		// 조회수(20)
	
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaPw() {
		return qnaPw;
	}
	public void setQnaPw(String qnaPw) {
		this.qnaPw = qnaPw;
	}
	public String getQnaCate() {
		return qnaCate;
	}
	public void setQnaCate(String qnaCate) {
		this.qnaCate = qnaCate;
	}
	public String getQnaName() {
		return qnaName;
	}
	public void setQnaName(String qnaName) {
		this.qnaName = qnaName;
	}
	public String getQnaCon() {
		return qnaCon;
	}
	public void setQnaCon(String qnaCon) {
		this.qnaCon = qnaCon;
	}
	public String getQnaW() {
		return qnaW;
	}
	public void setQnaW(String qnaW) {
		this.qnaW = qnaW;
	}
	public Date getQnaIpD() {
		return qnaIpD;
	}
	public void setQnaIpD(Date qnaIpD) {
		this.qnaIpD = qnaIpD;
	}
	public int getQnaView() {
		return QnaView;
	}
	public void setQnaView(int qnaView) {
		QnaView = qnaView;
	}		
	
 }
	
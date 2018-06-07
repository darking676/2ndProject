package com.user.model.DTO;

import java.sql.Date;

public class bbsMemDTO{//회원게시판 DTO
	private int bbsMemNo;  		// 글번호
	private String bbsMemCate; 	// 글 분류
	private String bbsMemName; 	// 글 제목
	private String bbsMemCon; 		// 글 내용
	private String memId; 			// 글쓴이
	private Date bbsMemDate; 		// 작성일
	private int bbsMemView; 		// 조회수
	
	public int getBbsMemNo() {
		return bbsMemNo;
	}
	public void setBbsMemNo(int bbsMemNo) {
		this.bbsMemNo = bbsMemNo;
	}
	public String getBbsMemCate() {
		return bbsMemCate;
	}
	public void setBbsMemCate(String bbsMemCate) {
		this.bbsMemCate = bbsMemCate;
	}
	public String getBbsMemName() {
		return bbsMemName;
	}
	public void setBbsMemName(String bbsMemName) {
		this.bbsMemName = bbsMemName;
	}
	public String getBbsMemCon() {
		return bbsMemCon;
	}
	public void setBbsMemCon(String bbsMemCon) {
		this.bbsMemCon = bbsMemCon;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Date getBbsMemDate() {
		return bbsMemDate;
	}
	public void setBbsMemDate(Date bbsMemDate) {
		this.bbsMemDate = bbsMemDate;
	}
	public int getBbsMemView() {
		return bbsMemView;
	}
	public void setBbsMemView(int bbsMemView) {
		this.bbsMemView = bbsMemView;
	}
	

}

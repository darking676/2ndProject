package com.user.model.DTO;

import java.sql.Date;

public class bbsQnaDTO {
	private int qnaNo;			// �۹�ȣ(20)
	private String qnaPw;		// �н�����(20) ,get data - ���� ��� ��
	private String qnaCate;		// �з�(20)
	private String qnaName;		// ������(100)
	private String qnaCon;		// �۳���(long)
	private String qnaW;		// ȸ��ID(20) ,get data
	private Date qnaIpD;		// �Է�����
	private int QnaView;		// ��ȸ��(20)
	
	
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
	
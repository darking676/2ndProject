package com.login.model.DTO;

import java.sql.Date;

public class memDTO {//회원가입 DTO

	private String memId;		// 아이디(20)
    private String memPw;		// 비밀번호(20)
    private int memNo;			// 회원번호
    private String memName;		// 이름(40)
    private String memGen;		// 성별(4)
    private String memBirth;	// 생년월일(8)
    private String memMail;		// 이메일(40)
    private int memPnum;		// 전화(11)
    private Date memIpD;		// 입력일자
    private String memIpN;		// 입력자(40)
    private Date memUpD;		// 수정일자
    private String memUpN;		// 수정자(40)
    private String memCate;		// 분류
	
	public memDTO() {
		
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemGen() {
		return memGen;
	}

	public void setMemGen(String memGen) {
		this.memGen = memGen;
	}

	public String getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemMail() {
		return memMail;
	}

	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}

	public int getMemPnum() {
		return memPnum;
	}

	public void setMemPnum(int memPnum) {
		this.memPnum = memPnum;
	}

	public Date getMemIpD() {
		return memIpD;
	}

	public void setMemIpD(Date memIpD) {
		this.memIpD = memIpD;
	}

	public String getMemIpN() {
		return memIpN;
	}

	public void setMemIpN(String memIpN) {
		this.memIpN = memIpN;
	}

	public Date getMemUpD() {
		return memUpD;
	}

	public void setMemUpD(Date memUpD) {
		this.memUpD = memUpD;
	}

	public String getMemUpN() {
		return memUpN;
	}

	public void setMemUpN(String memUpN) {
		this.memUpN = memUpN;
	}

	public String getMemCate() {
		return memCate;
	}

	public void setMemCate(String memCate) {
		this.memCate = memCate;
	}

}

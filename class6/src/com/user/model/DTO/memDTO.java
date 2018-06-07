package com.user.model.DTO;

import java.sql.Date;

public class memDTO {//mypage ¾µ DTO

	private String memId,memPw,memName,memGen,memMail,memIpN,memUdN;
	private int memNo,lecNo,memPnum;
	private Date memBirth,memIpD,memUdD;
	
	//mypage¿ë
	private String lecName,chk;
	private Date lecStart,lecEnd;
	private int graJava,graWeb,graDb;
	
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
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	public String getMemIpN() {
		return memIpN;
	}
	public void setMemIpN(String memIpN) {
		this.memIpN = memIpN;
	}
	public String getMemUdN() {
		return memUdN;
	}
	public void setMemUdN(String memUdN) {
		this.memUdN = memUdN;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getLecNo() {
		return lecNo;
	}
	public void setLecNo(int lecNo) {
		this.lecNo = lecNo;
	}
	public int getMemPnum() {
		return memPnum;
	}
	public void setMemPnum(int memPnum) {
		this.memPnum = memPnum;
	}
	public Date getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(Date memBirth) {
		this.memBirth = memBirth;
	}
	public Date getMemIpD() {
		return memIpD;
	}
	public void setMemIpD(Date memIpD) {
		this.memIpD = memIpD;
	}
	public Date getMemUdD() {
		return memUdD;
	}
	public void setMemUdD(Date memUdD) {
		this.memUdD = memUdD;
	}
	public String getLecName() {
		return lecName;
	}
	public void setLecName(String lecName) {
		this.lecName = lecName;
	}
	public String getChk() {
		return chk;
	}
	public void setChk(String chk) {
		this.chk = chk;
	}
	public Date getLecStart() {
		return lecStart;
	}
	public void setLecStart(Date lecStart) {
		this.lecStart = lecStart;
	}
	public Date getLecEnd() {
		return lecEnd;
	}
	public void setLecEnd(Date lecEnd) {
		this.lecEnd = lecEnd;
	}
	public int getGraJava() {
		return graJava;
	}
	public void setGraJava(int graJava) {
		this.graJava = graJava;
	}
	public int getGraWeb() {
		return graWeb;
	}
	public void setGraWeb(int graWeb) {
		this.graWeb = graWeb;
	}
	public int getGraDb() {
		return graDb;
	}
	public void setGraDb(int graDb) {
		this.graDb = graDb;
	}
	
}

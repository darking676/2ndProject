package com.user.model.DTO;

import java.sql.Date;

public class classDTO {
	private int lecNo;
	private String lecName;
	private Date lecStart;
	private Date lecEnd;
	private String lecCon;
	private String teaId;
	private String classAddress;
	private int classNum;
	private Date lecIpD;
	private String LecIpN;
	
	public int getLecNo() {
		return lecNo;
	}
	public void setLecNo(int lecNo) {
		this.lecNo = lecNo;
	}
	public String getLecName() {
		return lecName;
	}
	public void setLecName(String lecName) {
		this.lecName = lecName;
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
	public String getLecCon() {
		return lecCon;
	}
	public void setLecCon(String lecCon) {
		this.lecCon = lecCon;
	}
	public String getTeaId() {
		return teaId;
	}
	public void setTeaId(String teaId) {
		this.teaId = teaId;
	}
	public String getClassAddress() {
		return classAddress;
	}
	public void setClassAddress(String classAddress) {
		this.classAddress = classAddress;
	}
	public int getClassNum() {
		return classNum;
	}
	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}
	public Date getLecIpD() {
		return lecIpD;
	}
	public void setLecIpD(Date lecIpD) {
		this.lecIpD = lecIpD;
	}
	public String getLecIpN() {
		return LecIpN;
	}
	public void setLecIpN(String lecIpN) {
		LecIpN = lecIpN;
	}
}

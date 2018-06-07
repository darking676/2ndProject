package com.admin.model;

import java.sql.Date;


public class LecDto {

    private int lecNo;
    private String lecName;
    private String lecCon;
    private String teaId;
    private int classNo;
    private int classNum;
    private Date lecStart;
    private Date lecEnd;
    private Date lecIpD;
    private String lecIpN;
    private String lecUdD;
    private String lecDdN;
    private String classAddress;
    private String className;
    private String memId;
    private String memName;
    private String memGen;
    private String lecStuName;
    private String[] selectList;

    public String[] getSelectList() {
        return selectList;
    }

    public void setSelectList(String[] selectList) {
        this.selectList = selectList;
    }

    public String getLecStuName() {
        return lecStuName;
    }

    public void setLecStuName(String lecStuName) {
        this.lecStuName = lecStuName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
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

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getClassAddress() {
        return classAddress;
    }

    public void setClassAddress(String classAddress) {
        this.classAddress = classAddress;
    }


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

    public int getClassNo() {
        return classNo;
    }

    public void setClassNo(int classNo) {
        this.classNo = classNo;
    }

    public int getClassNum() {
        return classNum;
    }

    public void setClassNum(int classNum) {
        this.classNum = classNum;
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

    public Date getLecIpD() {
        return lecIpD;
    }

    public void setLecIpD(Date lecIpD) {
        this.lecIpD = lecIpD;
    }

    public String getLecIpN() {
        return lecIpN;
    }

    public void setLecIpN(String lecIpN) {
        this.lecIpN = lecIpN;
    }

    public String getLecUdD() {
        return lecUdD;
    }

    public void setLecUdD(String lecUdD) {
        this.lecUdD = lecUdD;
    }

    public String getLecDdN() {
        return lecDdN;
    }

    public void setLecDdN(String lecDdN) {
        this.lecDdN = lecDdN;
    }
}

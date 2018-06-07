package com.admin.model;

import java.sql.Date;

public class StuDto {
    private String memId;
    private String memName;
    private int graJava;
    private int graweb;
    private int gradb;
    private Date graIpD;
    private String[] groupMemId;
    private String[] groupGraJava;
    private String[] grouptGraweb;
    private String[] groupGraDb;
    private String[] selectList;
    private String[] isNull;
    private String chkIpD;
    private String teaId;

    public String[] getIsNull() {
        return isNull;
    }

    public void setIsNull(String[] isNull) {
        this.isNull = isNull;
    }

    public String[] getSelectList() {
        return selectList;
    }

    public void setSelectList(String[] selectList) {
        this.selectList = selectList;
    }

    public String getChkIpD() {
        return chkIpD;
    }

    public void setChkIpD(String chkIpD) {
        this.chkIpD = chkIpD;
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId;
    }

    public String[] getGroupMemId() {
        return groupMemId;
    }

    public void setGroupMemId(String[] groupMemId) {
        this.groupMemId = groupMemId;
    }

    public String[] getGroupGraJava() {
        return groupGraJava;
    }

    public void setGroupGraJava(String[] groupGraJava) {
        this.groupGraJava = groupGraJava;
    }

    public String[] getGrouptGraweb() {
        return grouptGraweb;
    }

    public void setGrouptGraweb(String[] grouptGraweb) {
        this.grouptGraweb = grouptGraweb;
    }

    public String[] getGroupGraDb() {
        return groupGraDb;
    }

    public void setGroupGraDb(String[] groupGraDb) {
        this.groupGraDb = groupGraDb;
    }

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }

    public String getMemName() {
        return memName;
    }

    public void setMemName(String memName) {
        this.memName = memName;
    }

    public int getGraJava() {
        return graJava;
    }

    public void setGraJava(int graJava) {
        this.graJava = graJava;
    }

    public int getGraweb() {
        return graweb;
    }

    public void setGraweb(int graweb) {
        this.graweb = graweb;
    }

    public int getGradb() {
        return gradb;
    }

    public void setGradb(int gradb) {
        this.gradb = gradb;
    }

    public Date getGraIpD() {
        return graIpD;
    }

    public void setGraIpD(Date graIpD) {
        this.graIpD = graIpD;
    }
}

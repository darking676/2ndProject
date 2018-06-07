package com.admin.model;

import java.util.Date;

public class ClaDto {

    private int classNo;
    private String className;
    private String classAddress;
    private Date classIpD;
    private String classIpN;

    public int getClassNo() {
        return classNo;
    }

    public void setClassNo(int classNo) {
        this.classNo = classNo;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClassAddress() {
        return classAddress;
    }

    public void setClassAddress(String classAddress) {
        this.classAddress = classAddress;
    }

    public java.sql.Date getClassIpD() {
        return (java.sql.Date) classIpD;
    }

    public void setClassIpD(Date classIpD) {
        this.classIpD = classIpD;
    }

    public String getClassIpN() {
        return classIpN;
    }

    public void setClassIpN(String classInN) {
        this.classIpN = classInN;
    }


}

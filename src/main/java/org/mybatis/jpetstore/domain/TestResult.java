package org.mybatis.jpetstore.domain;

import java.io.Serializable;

public class TestResult implements Serializable {
    private static final long serialVersionUID = -2159121673445254651L;

    private String userId;
    private int ET=0;
    private int FI=0;
    private int DG=0;
    private int CT=0;
    private int RT=0;
    private int BD=0;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getET() {
        return ET;
    }

    public void setET(int ET) {
        this.ET = ET;
    }

    public int getFI() {
        return FI;
    }

    public void setFI(int FI) {
        this.FI = FI;
    }

    public int getDG() {
        return DG;
    }

    public void setDG(int DG) {
        this.DG = DG;
    }

    public int getCT() {
        return CT;
    }

    public void setCT(int CT) {
        this.CT = CT;
    }

    public int getRT() {
        return RT;
    }

    public void setRT(int RT) {
        this.RT = RT;
    }

    public int getBD() {
        return BD;
    }

    public void setBD(int BD) {
        this.BD = BD;
    }
}
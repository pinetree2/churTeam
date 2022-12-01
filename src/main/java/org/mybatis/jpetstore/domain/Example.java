package org.mybatis.jpetstore.domain;

public class Example {

    private String type;
    private int queNo;
    private int exNo;
    private int point;
    private String exContents;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQueNo() {
        return queNo;
    }

    public void setQueNo(int queNo) {
        this.queNo = queNo;
    }

    public int getExNo() {
        return exNo;
    }

    public void setExNo(int exNo) {
        this.exNo = exNo;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getExContents() {
        return exContents;
    }

    public void setExContents(String exContents) {
        this.exContents = exContents;
    }
}
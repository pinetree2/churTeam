package org.mybatis.jpetstore.domain;

import java.io.Serializable;

public class TestResult implements Serializable {
    private static final long serialVersionUID = -2159121673445254651L;

    private String userId;
    private int et_result=0;
    private int fish_result=0;
    private int dog_result=0;
    private int cat_result=0;
    private int rep_result=0;
    private int bird_result=0;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int isEt_result() {
        return et_result;
    }

    public void setEt_result(int et_result) {
        this.et_result = et_result;
    }

    public int isFish_result() {
        return fish_result;
    }

    public void setFish_result(int fish_result) {
        this.fish_result = fish_result;
    }

    public int isDog_result() {
        return dog_result;
    }

    public void setDog_result(int dog_result) {
        this.dog_result = dog_result;
    }

    public int isCat_result() {
        return cat_result;
    }

    public void setCat_result(int cat_result) {
        this.cat_result = cat_result;
    }

    public int isRep_result() {
        return rep_result;
    }

    public void setRep_result(int rep_result) {
        this.rep_result = rep_result;
    }

    public int isBird_result() {
        return bird_result;
    }

    public void setBird_result(int bird_result) {
        this.bird_result = bird_result;
    }
}
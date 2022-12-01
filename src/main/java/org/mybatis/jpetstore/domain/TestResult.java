package org.mybatis.jpetstore.domain;

public class TestResult {

    private String userId;
    private boolean et_result;
    private boolean fish_result;
    private boolean dog_result;
    private boolean cat_result;
    private boolean rep_result;
    private boolean bird_result;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public boolean isEt_result() {
        return et_result;
    }

    public void setEt_result(boolean et_result) {
        this.et_result = et_result;
    }

    public boolean isFish_result() {
        return fish_result;
    }

    public void setFish_result(boolean fish_result) {
        this.fish_result = fish_result;
    }

    public boolean isDog_result() {
        return dog_result;
    }

    public void setDog_result(boolean dog_result) {
        this.dog_result = dog_result;
    }

    public boolean isCat_result() {
        return cat_result;
    }

    public void setCat_result(boolean cat_result) {
        this.cat_result = cat_result;
    }

    public boolean isRep_result() {
        return rep_result;
    }

    public void setRep_result(boolean rep_result) {
        this.rep_result = rep_result;
    }

    public boolean isBird_result() {
        return bird_result;
    }

    public void setBird_result(boolean bird_result) {
        this.bird_result = bird_result;
    }
}
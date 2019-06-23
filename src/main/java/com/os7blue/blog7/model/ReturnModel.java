package com.os7blue.blog7.model;


public class ReturnModel {

    private Integer code = 0;

    private String mag;

    private Integer count = 0;

    private Object data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMag() {
        return mag;
    }

    public void setMag(String mag) {
        this.mag = mag;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "ReturnModel{" +
                "code=" + code +
                ", mag='" + mag + '\'' +
                ", count=" + count +
                ", data=" + data +
                '}';
    }
}

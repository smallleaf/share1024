package com.share1024.netty.javaSealize;

import java.io.Serializable;

/**
 * Created by yesheng on 2017/2/25.
 */
public class SubScribeResp implements Serializable {

    private int id;
    private int code;
    private String desc;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }


    @Override
    public String toString() {
        return "SubScribeResp{" +
                "id=" + id +
                ", code=" + code +
                ", desc='" + desc + '\'' +
                '}';
    }
}

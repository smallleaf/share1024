package com.share1024.netty.javaSealize;

import java.io.Serializable;

/**
 * Created by yesheng on 2017/2/25.
 */
public class SubscribeReq implements Serializable{


    private int  id;
    private String  username;
    private String  productName;
    private String phoneNumberName;
    private String address;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPhoneNumberName() {
        return phoneNumberName;
    }

    public void setPhoneNumberName(String phoneNumberName) {
        this.phoneNumberName = phoneNumberName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "SubscribeReq{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", productName='" + productName + '\'' +
                ", phoneNumberName='" + phoneNumberName + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

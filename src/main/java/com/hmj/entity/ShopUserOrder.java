package com.hmj.entity;

import com.sun.xml.internal.rngom.binary.DataExceptPattern;

import java.util.Date;

public class ShopUserOrder {

    private int id;

    private String order_no;

    private String user_name;

    private  int status;

    private Date create_time;

    private Date update_time;

    @Override
    public String toString() {
        return "ShopUserOrder{" +
                "id=" + id +
                ", order_no='" + order_no + '\'' +
                ", user_name='" + user_name + '\'' +
                ", status=" + status +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrder_no() {
        return order_no;
    }

    public void setOrder_no(String order_no) {
        this.order_no = order_no;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }
}

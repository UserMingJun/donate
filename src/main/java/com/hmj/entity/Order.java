package com.hmj.entity;

import java.util.Date;



//订单类
public class Order {

    private int id;

    private String user_name;

    private String order_no;

    private String sender_name;

    private String sender_number;

    private String sender_address;

    private String sender_time;

    private int status;

    private Date create_time;

    private Date update_time;

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", user_name='" + user_name + '\'' +
                ", order_no='" + order_no + '\'' +
                ", sender_name='" + sender_name + '\'' +
                ", sender_number='" + sender_number + '\'' +
                ", sender_address='" + sender_address + '\'' +
                ", sender_time='" + sender_time + '\'' +
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

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getOrder_no() {
        return order_no;
    }

    public void setOrder_no(String order_no) {
        this.order_no = order_no;
    }

    public String getSender_name() {
        return sender_name;
    }

    public void setSender_name(String sender_name) {
        this.sender_name = sender_name;
    }

    public String getSender_number() {
        return sender_number;
    }

    public void setSender_number(String sender_number) {
        this.sender_number = sender_number;
    }

    public String getSender_address() {
        return sender_address;
    }

    public void setSender_address(String sender_address) {
        this.sender_address = sender_address;
    }

    public String getSender_time() {
        return sender_time;
    }

    public void setSender_time(String sender_time) {
        this.sender_time = sender_time;
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
package com.hmj.entity;

import java.util.Date;

public class ProductItem {

    private int id;

    private String order_no;

    private int product_id;

    private int quantity;

    private  int integral;

    private int total_integral;

    private Date create_time;

    private Date update_time;

    @Override
    public String toString() {
        return "ProductItem{" +
                "id=" + id +
                ", order_no='" + order_no + '\'' +
                ", product_id=" + product_id +
                ", quantity=" + quantity +
                ", integral=" + integral +
                ", total_integral=" + total_integral +
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

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    public int getTotal_integral() {
        return total_integral;
    }

    public void setTotal_integral(int total_integral) {
        this.total_integral = total_integral;
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

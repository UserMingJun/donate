package com.hmj.dao;

import com.hmj.entity.CheckOut;

import java.util.List;

public interface CheckOutDao {

    //添加付款订单
    int insert(CheckOut checkOut);

    //查询用户订单详情
    CheckOut selectByOrderNo(String order_no);


}

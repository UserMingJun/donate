package com.hmj.service;

import com.hmj.entity.CheckOut;

import java.util.List;

public interface CheckOutService {

    //添加兑换订单
    int insertCheckOut(CheckOut checkOut);

    //判断积分是否足够
    boolean isIntegralEnough(String order_no);

    //查询用户所有订单详情
    CheckOut selectByOrderNo(String order_no);


}

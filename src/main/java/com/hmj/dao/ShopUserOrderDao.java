package com.hmj.dao;

import com.hmj.entity.ShopUserOrder;

import java.util.List;

public interface ShopUserOrderDao {

    //添加兑换订单
    int insert(ShopUserOrder shopUserOrder);

    //查找未完成兑换订单
    ShopUserOrder select(ShopUserOrder shopUserOrder);

    //通过订单号查找
    ShopUserOrder selectByOrderNo(String order_no);

    //查找用户兑换购物车号
    List<ShopUserOrder> selectByName(String user_name);



}

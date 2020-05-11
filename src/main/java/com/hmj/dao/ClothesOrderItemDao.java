package com.hmj.dao;


import com.hmj.entity.ClothesOrderItem;

import java.util.List;

public interface ClothesOrderItemDao {

    //添加订单详情
    int insert(ClothesOrderItem clothesOrderItem);

    //查询衣服订单详情
    List<ClothesOrderItem> select();

    //删除订单
    int delete(String order_no);

    //根据order_no查找订单
    ClothesOrderItem selectByOrderNo(String order_no);

}
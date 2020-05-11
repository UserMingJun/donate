package com.hmj.service;

import com.hmj.entity.ClothesOrderItem;

import java.util.List;

public interface ClothesOrderItemService {

    //添加订单详情
    int insertClothesOrderItem(ClothesOrderItem clothesOrderItem);

    //查询衣服订单详情
    List<ClothesOrderItem> selectClothesOrderItem();

    //查询各年订单总量
    List<Integer> selectClotherYearOrder();

    //删除订单
    int delete(String order_no);

    //按照order_no查询计算积分
    ClothesOrderItem selectClothesItemByOrderNo(String order_no);

}
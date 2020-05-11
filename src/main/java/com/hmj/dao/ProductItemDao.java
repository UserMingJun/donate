package com.hmj.dao;

import com.hmj.entity.ProductItem;

import java.util.List;

public interface ProductItemDao {


    //添加兑换订单详情
    int insert(ProductItem productItem);

    //查找兑换订单详情
    List<ProductItem> select(String order_no);

    //删除
    int delete(int id);



}

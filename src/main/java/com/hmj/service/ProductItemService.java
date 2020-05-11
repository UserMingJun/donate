package com.hmj.service;

import com.hmj.entity.ProductItem;

import java.util.List;

public interface ProductItemService {

    //查询当前订单所有商品信息
    List<ProductItem> selectByOrderNo(String order_no);

    //从购物车中删除物品
    int deleteFromCart(int id);


}

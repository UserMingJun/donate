package com.hmj.service;

import com.hmj.entity.Product;
import com.hmj.entity.ShopUserOrder;

import java.util.List;

public interface ShopUserOrderService {

    //添加兑换订单
    int insertShopUserOrder(ShopUserOrder shopUserOrder, Product product, int quantity);

    //查询兑换订单
    ShopUserOrder selectShopUserOrder(ShopUserOrder shopUserOrder);

    //查找用户所有兑换订单
    List<ShopUserOrder> selectByName(String user_name);


}

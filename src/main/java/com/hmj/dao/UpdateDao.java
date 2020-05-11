package com.hmj.dao;

import com.hmj.entity.*;

public interface UpdateDao {

    //更新申请
    void updateApply(Apply apply);

    //更新积分
    void updateIntegral(User user);

    //更新文章
    void updateArticle(Article article);

    //更新订单
    void updateOrder(Order order);

    //更新兑换订单
    void updateShopUserOrder(ShopUserOrder shopUserOrder);

}
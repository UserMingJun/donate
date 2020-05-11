package com.hmj.service;

import com.hmj.entity.*;

public interface UpdateService {

    void updateApply(Apply apply);

    void updateIntegral(User user);

    void updateArticle(Article article);

    void updateOrder(Order order);

    void updateShopUserOrder(ShopUserOrder shopUserOrder);

}
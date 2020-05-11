package com.hmj.service.impl;

import com.hmj.dao.UpdateDao;
import com.hmj.entity.*;
import com.hmj.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class UpdateServiceImpl implements UpdateService {

    @Autowired
    private UpdateDao updateDao;


    @Override
    public void updateApply(Apply apply) {
        updateDao.updateApply(apply);
    }

    @Override
    public void updateIntegral(User user) {
        updateDao.updateIntegral(user);
    }

    @Override
    public void updateArticle(Article article) {
        updateDao.updateArticle(article);
    }

    @Override
    public void updateOrder(Order order) {
        updateDao.updateOrder(order);
    }

    @Override
    public void updateShopUserOrder(ShopUserOrder shopUserOrder) {
        updateDao.updateShopUserOrder(shopUserOrder);
    }
}
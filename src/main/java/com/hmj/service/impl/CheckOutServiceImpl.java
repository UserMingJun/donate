package com.hmj.service.impl;

import com.hmj.dao.*;
import com.hmj.entity.CheckOut;
import com.hmj.entity.ProductItem;
import com.hmj.entity.ShopUserOrder;
import com.hmj.entity.User;
import com.hmj.service.CheckOutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class CheckOutServiceImpl implements CheckOutService {

    @Autowired
    private CheckOutDao checkOutDao;

    @Autowired
    private ShopUserOrderDao shopUserOrderDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private ProductItemDao productItemDao;

    @Autowired
    private UpdateDao updateDao;


    @Override
    public int insertCheckOut(CheckOut checkOut) {
        return checkOutDao.insert(checkOut);
    }

    @Override
    public boolean isIntegralEnough(String order_no) {
        ShopUserOrder shopUserOrder = new ShopUserOrder();
        shopUserOrder.setOrder_no(order_no);
        String user_name = shopUserOrderDao.selectByOrderNo(order_no).getUser_name();
        User user = userDao.selectByName(user_name);
        List<ProductItem> productItemList =  productItemDao.select(order_no);
        int sum = 0;
        for (ProductItem arr: productItemList
             ) {
            sum += arr.getTotal_integral();
        }
        if (sum > user.getIntegral()){
            return false;
        }else {
            user.setIntegral(user.getIntegral() - sum);
            updateDao.updateIntegral(user);
            return true;
        }

    }

    @Override
    public CheckOut selectByOrderNo(String order_no) {
        return checkOutDao.selectByOrderNo(order_no);
    }
}

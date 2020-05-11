package com.hmj.service.impl;

import com.hmj.dao.ProductItemDao;
import com.hmj.dao.ShopUserOrderDao;
import com.hmj.entity.Product;
import com.hmj.entity.ProductItem;
import com.hmj.entity.ShopUserOrder;
import com.hmj.service.ShopUserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Service
@Transactional
public class ShopUserOrderServiceImpl implements ShopUserOrderService {

    @Autowired
    ShopUserOrderDao shopUserOrderDao;

    @Autowired
    ProductItemDao productItemDao;


    @Override
    public int insertShopUserOrder(ShopUserOrder shopUserOrder, Product product, int quantity) {
        Date date = new Date();
        ShopUserOrder shopUserOrder1 = shopUserOrderDao.select(shopUserOrder);
        ProductItem productItem = new ProductItem();

        productItem.setProduct_id(product.getProduct_id());
        productItem.setQuantity(quantity);
        productItem.setIntegral((int)product.getPrice());
        productItem.setTotal_integral(quantity*(int)product.getPrice());
        productItem.setCreate_time(date);
        productItem.setUpdate_time(date);
        if (shopUserOrder1 != null){
            productItem.setOrder_no(shopUserOrder1.getOrder_no());
            return productItemDao.insert(productItem);
        }else {
            productItem.setOrder_no(shopUserOrder.getOrder_no());
            productItemDao.insert(productItem);
            return shopUserOrderDao.insert(shopUserOrder);

        }
    }

    @Override
    public ShopUserOrder selectShopUserOrder(ShopUserOrder shopUserOrder) {
        return shopUserOrderDao.select(shopUserOrder);
    }

    @Override
    public List<ShopUserOrder> selectByName(String user_name) {
        return shopUserOrderDao.selectByName(user_name);
    }


}

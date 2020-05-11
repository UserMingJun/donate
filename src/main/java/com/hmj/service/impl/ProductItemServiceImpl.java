package com.hmj.service.impl;

import com.hmj.dao.ProductItemDao;
import com.hmj.entity.ProductItem;
import com.hmj.service.ProductItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class ProductItemServiceImpl implements ProductItemService {

    @Autowired
    ProductItemDao productItemDao;

    @Override
    public List<ProductItem> selectByOrderNo(String order_no) {
        return productItemDao.select(order_no);
    }

    @Override
    public int deleteFromCart(int id) {
        return productItemDao.delete(id);
    }
}

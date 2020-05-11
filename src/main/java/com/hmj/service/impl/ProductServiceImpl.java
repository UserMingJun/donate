package com.hmj.service.impl;


import com.hmj.dao.ProductDao;
import com.hmj.entity.Product;
import com.hmj.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;


    @Override
    public Product selectById(int product_id) {
        return productDao.selectById(product_id);
    }
}

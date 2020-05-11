package com.hmj.dao;

import com.hmj.entity.Product;

public interface ProductDao {

    //通过id查询商品
    Product selectById(int product_id);



}

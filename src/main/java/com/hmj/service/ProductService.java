package com.hmj.service;

import com.hmj.entity.Product;

public interface ProductService {

    //通过id查找商品
    Product selectById(int product_id);


}

package com.hmj.dao;

import com.hmj.entity.BookOrderItem;

import java.util.List;

public interface BookOrderItemDao {

    //添加书本订单详情
    int insert(BookOrderItem bookOrderItem);

    //查找书本订单详情
    List<BookOrderItem> select();

    //删除订单
    int delete(String order_no);

    //根据order_no查找订单
    BookOrderItem selectByOrderNo(String order_no);

}
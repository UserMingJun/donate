package com.hmj.service;


import com.hmj.entity.BookOrderItem;

import java.util.List;

public interface BookOrderItemService {

    //添加书籍订单详情
    int insertBookOrderItem(BookOrderItem bookOrderItem);

    //查询书籍订单详情
    List<BookOrderItem> selectBookOrderItem();

    //查询各年订单总量
    List<Integer> selectBookYearOrder();

    //删除订单
    int delete(String order_no);

    //按照order_no查询计算积分
    BookOrderItem selectBookItemByOrderNo(String order_no);
}
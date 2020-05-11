package com.hmj.service;

import com.hmj.entity.Order;

import java.util.List;

public interface OrderService {

    //按照id查找订单号
    String selectOrderById(int id);

    //添加订单
    int insertOrder(Order order);

    //查询所有订单
    List<Order> selectAllOrder();

    //删除订单
    int deleteOrder(int id);

    // 查询用户所有订单
    List<Order> selectAllOrderByName(String name);

    //查询未完成订单
    List<Order> selectUnfinishedOrder(String name);

    //查询已完成订单
    List<Order> selectFinishedOrder(String name);

    //查询订单
    List<Order> searchOrder(String order_no);

    //按照id查找用户名
    String selectUserNameById(int id);

}
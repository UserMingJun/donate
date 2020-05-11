package com.hmj.dao;

import com.hmj.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDao {

    //查找订单
    Order select(Order order);

    //添加订单
    int insert(Order order);

    //更新订单
    int update(Order order);

    //删除订单
    int delete(int id);

    //查询所有订单
    List<Order> selectAllOrder();

    //查找用户所有订单
    List<Order> selectAllOrderByName(@Param("name") String name);

    //查找订单
    List<Order> search(String order_no);

    //通过id查找order_no
    String selectOrderNoById(int id);

    //通过id查找uer_name
    String selectUserNameById(int id);

}
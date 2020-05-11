package com.hmj.service.impl;

import com.hmj.dao.OrderDao;
import com.hmj.entity.Order;
import com.hmj.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao;

    @Override
    public String selectOrderById(int id) {
        return orderDao.selectOrderNoById(id);
    }

    @Override
    public int insertOrder(Order order) {
        return orderDao.insert(order);
    }

    @Override
    public List<Order> selectAllOrder() {
        return orderDao.selectAllOrder();
    }

    @Override
    public int deleteOrder(int id) {
        return orderDao.delete(id);
    }

    @Override
    public List<Order> selectAllOrderByName(String name) {
        return orderDao.selectAllOrderByName(name);
    }

    @Override
    public List<Order> selectUnfinishedOrder(String name) {
        List<Order> list = orderDao.selectAllOrderByName(name);
        List<Order> unfinishedList = new ArrayList<>();
        for (Order arr: list
        ) {
            if (arr.getStatus() ==0){
                unfinishedList.add(arr);
            }
        }
        return unfinishedList;

    }

    @Override
    public List<Order> selectFinishedOrder(String name) {
        List<Order> list = orderDao.selectAllOrderByName(name);
        List<Order> finishedList = new ArrayList<>();
        for (Order arr: list
        ) {
            if (arr.getStatus() ==1){
                finishedList.add(arr);
            }
        }
        return finishedList;
    }

    @Override
    public List<Order> searchOrder(String order_no) {
        return orderDao.search(order_no);
    }

    @Override
    public String selectUserNameById(int id) {
        return orderDao.selectUserNameById(id);
    }


}
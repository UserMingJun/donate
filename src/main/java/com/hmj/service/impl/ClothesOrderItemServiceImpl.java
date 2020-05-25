package com.hmj.service.impl;

import com.hmj.dao.ClothesOrderItemDao;
import com.hmj.entity.ClothesOrderItem;
import com.hmj.service.ClothesOrderItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


@Service
@Transactional
public class ClothesOrderItemServiceImpl implements ClothesOrderItemService {

    @Autowired
    ClothesOrderItemDao clothesOrderItemDao;

    @Override
    public int insertClothesOrderItem(ClothesOrderItem clothesOrderItem) {
        return clothesOrderItemDao.insert(clothesOrderItem);
    }

    @Override
    public List<ClothesOrderItem> selectClothesOrderItem() {
        return clothesOrderItemDao.select();
    }

    @Override
    public List<Integer> selectClotherYearOrder() {
        List<ClothesOrderItem> clothesOrderItemList= clothesOrderItemDao.select();
        List<Integer> list = new ArrayList<>();
        int sum_2017 = 0, sum_2018 = 0, sum_2019 = 0, sum_2020 = 0;
        for (ClothesOrderItem arr:clothesOrderItemList
        ) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(arr.getCreate_time());
            int year = calendar.get(Calendar.YEAR);
            if (year == 2017){
                sum_2017++;
            }else if (year == 2018){
                sum_2018++;
            }else if (year == 2019){
                sum_2019++;
            }else if (year == 2020){
                sum_2020++;
            }
        }
        list.add(sum_2017);
        list.add(sum_2018);
        list.add(sum_2019);
        list.add(sum_2020);
        return list;
    }

    @Override
    public int delete(String order_no) {
        return clothesOrderItemDao.delete(order_no);
    }

    @Override
    public ClothesOrderItem selectClothesItemByOrderNo(String order_no) {
        return clothesOrderItemDao.selectByOrderNo(order_no);
    }
}
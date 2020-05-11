package com.hmj.service.impl;


import com.hmj.dao.UserDao;
import com.hmj.entity.ClothesOrderItem;
import com.hmj.entity.User;
import com.hmj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    @Override
    public User checkUser(User user) {
        return userDao.select(user);
    }

    @Override
    public int regist(User user) {
        return userDao.insert(user);
    }

    @Override
    public User selectByEmail(String email) {
        return userDao.selectByEmail(email);
    }

    @Override
    public User selectByName(String name) {
        return userDao.selectByName(name);
    }

    @Override
    public int updatePassword(User user) {
        return userDao.update(user);
    }

    @Override
    public List<User> selectAllUser() {
        return userDao.selectAllUser();
    }

    @Override
    public List<User> selectUser() {
        List<User> userList = userDao.selectAllUser();
        List<User> resultList = new ArrayList<>();
        for (User arr: userList
        ) {
            if (arr.getRole() == 0){
                resultList.add(arr);
            }
        }
        return resultList;
    }

    @Override
    public List<Integer> selectUserYear() {
        List<User> userList= userDao.selectAllUser();
        List<Integer> list = new ArrayList<>();
        int sum_2017 = 0, sum_2018 = 0, sum_2019 = 0, sum_2020 = 0;
        for (User arr:userList
        ) {
            if (arr.getRole() == 0){
                Calendar calendar = Calendar.getInstance();
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
        }
        list.add(sum_2017);
        list.add(sum_2018);
        list.add(sum_2019);
        list.add(sum_2020);
        return list;
    }

    @Override
    public int deleteUser(int id) {
        return userDao.delete(id);
    }

}
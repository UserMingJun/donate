package com.hmj.dao;

import com.hmj.entity.User;

import java.util.List;


public interface UserDao {


    //查找用户
    User select(User user);

    //添加用户
    int insert(User user);

    //删除用户
    int delete(int id);

    //更新用户
    int update(User user);

    //根据邮箱查找用户
    User selectByEmail(String email);

    //根据用户名查找用户
    User selectByName(String name);

    List<User> selectAllUser();

}
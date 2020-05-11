package com.hmj.service;

import com.hmj.entity.User;

import java.util.List;

public interface UserService {


    //检查用户是否存在
    User checkUser(User user);

    //登陆操作
    int regist(User user);


    //通过邮箱查找用户
    User selectByEmail(String email);

    //通过用户名字查找用户
    User selectByName(String name);

    //更新用户密码
    int updatePassword(User user);

    //查询所有用户
    List<User> selectAllUser();

    //查询所有非管理员用户
    List<User> selectUser();

    //查询各年份用户数量
    List<Integer> selectUserYear();

    //删除用户
    int deleteUser(int id);


}
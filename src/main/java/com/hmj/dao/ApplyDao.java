package com.hmj.dao;

import com.hmj.entity.Apply;

import java.util.List;

public interface ApplyDao {

    //添加申请
    int insert(Apply apply);

    //查找所有申请
    List<Apply> select();

    //删除申请
    int delete(int id);

    //查找所有通过审核的申请
    List<Apply> selectPassApply();




}
package com.hmj.service;


import com.hmj.entity.Apply;

import java.util.List;

public interface ApplyService {

    //添加申请
    int insert(Apply apply);

    //查找所有申请
    List<Apply> selectAllApply();

    //删除申请
    int deleteApply(int id);

    //首页显示的申请信息
    List<Apply> initShowApply();




}
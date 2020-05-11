package com.hmj.service.impl;

import com.hmj.dao.ApplyDao;
import com.hmj.entity.Apply;
import com.hmj.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Service
@Transactional
public class ApplyServiceImpl implements ApplyService {

    @Autowired
    private ApplyDao applyDao;

    @Override
    public int insert(Apply apply) {
        return applyDao.insert(apply);
    }

    @Override
    public List<Apply> selectAllApply() {
        return applyDao.select();
    }

    @Override
    public int deleteApply(int id) {
        return applyDao.delete(id);
    }

    @Override
    public List<Apply> initShowApply() {
        List<Apply> applyList = applyDao.selectPassApply();
        List<Apply> resultList = new ArrayList<>();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        for (Apply arr: applyList
        ) {
            int day = (int) ((arr.getUpdate_time().getTime() - (new Date().getTime())) / (1000*3600*24));
            if (day <=  20){
                resultList.add(arr);
            }
        }

        return resultList;
    }



}
package com.hmj.controller;


import com.alibaba.fastjson.JSONObject;
import com.hmj.dao.ApplyDao;
import com.hmj.entity.Apply;
import com.hmj.tool.ImageTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;

@Controller
@RequestMapping("/apply")
public class ApplyController {

    @Autowired
    private ApplyDao applyDao;

    @RequestMapping("insertApply")
    @ResponseBody
    public String insertApply(@RequestParam("apply_name") String name,
                              @RequestParam("apply_number") String number,
                              @RequestParam("apply_address") String address,
                              @RequestParam("apply_detail") String detail,
                              @RequestParam("apply_file") MultipartFile file) throws IOException {
        JSONObject jsonObject = new JSONObject();
        String imageName = ImageTool.uploadImage(file);
        if (imageName.equals("EOF")){
            jsonObject.put("status", 200);
            jsonObject.put("message", "提交失败");
        }else{
            Apply apply = new Apply();
            apply.setName(name);
            apply.setNumber(number);
            apply.setAddress(address);
            apply.setDetail(detail);
            apply.setImage("../images/" + imageName);
            apply.setStatus(0);
            apply.setCreate_time(new Date());
            apply.setUpdate_time(new Date());
            applyDao.insert(apply);
            jsonObject.put("status", 100);
            jsonObject.put("message", "提交成功");
        }
        return jsonObject.toString();

    }



}
package com.hmj.controller;

import com.alibaba.fastjson.JSONObject;
import com.hmj.common.Const;
import com.hmj.entity.BookOrderItem;
import com.hmj.entity.ClothesOrderItem;
import com.hmj.entity.Order;
import com.hmj.entity.User;
import com.hmj.service.*;
import com.hmj.tool.MailTool;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")

public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ClothesOrderItemService clothesOrderItemService;

    @Autowired
    private BookOrderItemService bookOrderItemService;

    @Autowired
    private UpdateService updateService;



    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("toFindPass")
    public String toFindPass(){
        return "findpass";
    }

    @RequestMapping("toUpdatePass")
    public String toUpdatePass(){
        return "updatepass";
    }

    //登陆操作，若为管理员进入后台管理页面，验证是否为管理员登陆
    @RequestMapping("checkUser")
    @ResponseBody
    public String checkUser(@RequestParam("name") String name,
                            @RequestParam("pass") String password,
                            HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        HttpSession session = httpServletRequest.getSession();
        User user = new User();
        user.setName(name);
        user.setPassword(password);


        User resultUser = userService.checkUser(user);
        JSONObject res = new JSONObject();
        if (name.length() == 0 || password.length() == 0){
            res.put("status", 100);
            res.put("message", "用户名或密码不能为空");
        }else{
            if (resultUser == null){
                res.put("status", 200);
                res.put("message", "用户名或密码错误,请重新登录！");            //返回未登陆信息
//            httpServletResponse.sendRedirect("login");          //用户不存在
            }else{
                if(resultUser.getRole() == 1){                            //管理员登陆，进入后台页面
                    res.put("status", 300);
                    res.put("message", "管理员登陆");
                    session.setAttribute("user",user);
                }else{
                    res.put("status", 400);
                    res.put("message", "用户登陆");             //用户登陆，返回主页
                    user.setIntegral(resultUser.getIntegral());
                    session.setAttribute("user",user);              //用户存在存入session
                }
            }
        }
        return res.toString();
    }

    //注册操作,若用户存在则重新注册
    @RequestMapping("toRegist")
    @ResponseBody
    public String toRegist(@RequestParam("regname") String regname,
                           @RequestParam("password") String password,
                           @RequestParam("email") String email){
        User user = new User();
        user.setName(regname);
        user.setPassword(password);
        user.setEmail((email));
        user.setCreate_time(new Date());
        user.setUpdate_time(new Date());
        JSONObject res = new JSONObject();
        if (regname.length() == 0){
            res.put("status", 100);
            res.put("message", "用户名不能为空");
        }else if (password.length() == 0){
            res.put("status", 200);
            res.put("message", "密码不能为空");
        }else if (email.length() == 0){
            res.put("status", 300);
            res.put("message", "邮箱不能为空");
        }else if (!email.matches("[\\w\\.\\-]+@([\\w\\-]+\\.)+[\\w\\-]+")){
            res.put("status", 400);
            res.put("message", "请输入正确邮箱");
        }else if(password.length() < 6){
            res.put("status", 500);
            res.put("message", "密码长度不小于6位");
        }else{
            if (userService.selectByName(regname) != null){
                res.put("status", 600);
                res.put("message", "用户名已存在，请重新注册");
            }else if (userService.selectByEmail(email) != null){
                res.put("status", 700);
                res.put("message", "邮箱已存在，请重新注册");
            }else {
                userService.regist(user);
                res.put("status", 900);
                res.put("message", "注册成功");
            }
        }
        return res.toString();
    }


    //发送邮件找回密码
    @RequestMapping("sendMail")
    @ResponseBody
    public String sendMail(@RequestParam("send_mail") String send_mail, HttpServletRequest httpServletRequest,
                           HttpServletResponse httpServletResponse) throws Exception {
//        Const.current_mail = send_mail;
        httpServletResponse.setCharacterEncoding("UTF-8");
        httpServletResponse.setContentType("application/json; charset=utf-8");
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("send_mail",send_mail);
        User user = userService.selectByEmail(send_mail);
//        MailTool.send(user.getEmail(), user.getName());
        JSONObject res = new JSONObject();
        if(user != null){
            res.put("message", "邮件发送成功");
            res.put("status", 100);
            MailTool.send(user.getEmail(), user.getName());
        }else{;
            res.put("message", "邮件发送失败");
            res.put("status", 200);
        }
        return res.toString();
    }


    //更新密码
    @RequestMapping("updatePass")
    @ResponseBody
    public String updatePass(@RequestParam("update_pass") String updatePass, HttpServletRequest httpServletRequest,
                             HttpServletResponse httpServletResponse){
        HttpSession session = httpServletRequest.getSession();
        httpServletResponse.setCharacterEncoding("UTF-8");
        httpServletResponse.setContentType("application/json; charset=utf-8");
        JSONObject res = new JSONObject();
        User user = new User();
        if (updatePass.length() < 6 && updatePass.length() > 0){
            res.put("status", 100);
            res.put("message", "密码长度不小于6位");
        }else if (updatePass.length() == 0){
            res.put("status", 200);
            res.put("message", "密码不能为空");
        }else{
            user.setEmail((String) session.getAttribute("send_mail"));
            user.setPassword(updatePass);
            user.setUpdate_time(new Date());
            userService.updatePassword(user);
            res.put("status", 300);
            res.put("message", "更改成功");
        }

        return res.toString();
    }


    //获取用户积分
    @RequestMapping("getIntegral")
    @ResponseBody
    public String getIntegral(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        User user = (User)session.getAttribute("user");

//        List<Order> orderList = orderService.selectFinishedOrder(user.getName());
//        int sum = 0;
//        for (Order arr: orderList
//             ) {
//            ClothesOrderItem clothesOrderItem = clothesOrderItemService.selectClothesItemByOrderNo(arr.getOrder_no());
//            BookOrderItem bookOrderItem = bookOrderItemService.selectBookItemByOrderNo(arr.getOrder_no());
//            if (clothesOrderItem!= null){
//                            if (clothesOrderItem.getWeight().equals("5kg-15kg")){
//                                sum += 10;
//                            }
//                            if (clothesOrderItem.getWeight().equals("15kg-25kg")){
//                                sum += 20;
//                            }
//                            if (clothesOrderItem.getWeight().equals("25kg-35kg")){
//                                sum += 30;
//                            }
//                            if (clothesOrderItem.getWeight().equals("35kg-200kg")){
//                                sum += 40;
//                            }
//                            if (clothesOrderItem.getWeight().equals("200kg以上")){
//                                sum += 50;
//                            }
//            }
//                            if (bookOrderItem!= null){
//                                if (bookOrderItem.getQuantity().equals("5-20本")){
//                                    sum += 10;
//                            }
//                            if (bookOrderItem.getQuantity().equals("20-35本")){
//                                sum += 20;
//                            }
//                            if (bookOrderItem.getQuantity().equals("35-50本")){
//                                sum += 30;
//                            }
//                            if (bookOrderItem.getQuantity().equals("50本以上")){
//                                sum += 40;
//                            }
//            }
//        }

//        user.setIntegral(sum);
//        updateService.updateIntegral(user);
        int integral = userService.selectByName(user.getName()).getIntegral();
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("integral", integral);
        return jsonObject.toJSONString();
    }



    //用户退出，清除session
    @RequestMapping("exit")
    public String exit(HttpServletRequest httpServletRequest, ModelAndView modelAndView){
        HttpSession session = httpServletRequest.getSession();
        session.removeAttribute("user");
        return "index";
    }

}
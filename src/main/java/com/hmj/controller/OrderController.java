package com.hmj.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hmj.entity.BookOrderItem;
import com.hmj.entity.ClothesOrderItem;
import com.hmj.entity.Order;
import com.hmj.entity.User;
import com.hmj.service.*;
import com.hmj.tool.MD5Tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private UpdateService updateService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ClothesOrderItemService clothesOrderItemService;

    @Autowired
    private BookOrderItemService bookOrderItemService;

    @RequestMapping("donate_clothes")
    public String donateClothes(){
        return "donate_clothes";
    }

    @RequestMapping("donate_book")
    public String donateBook(){
        return "donate_book";
    }


    //添加捐赠衣物订单
    @RequestMapping("insertClothesOrder")
    @ResponseBody
    public String insertClothesOrder(@RequestParam("fullname") String sender_name, @RequestParam("fullnumber") String sender_number,
                                     @RequestParam("s_province") String province, @RequestParam("s_city") String city,
                                     @RequestParam("s_county") String country, @RequestParam("fulladdress") String fulladdress,
                                     @RequestParam("weight") String weight, @RequestParam("date-start") String sender_time,
                                     HttpServletRequest request){

        JSONObject jsonObject = new JSONObject();

        Order order = new Order();
        ClothesOrderItem clothesOrderItem = new ClothesOrderItem();
        Date date = new Date();
        int add = 0;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        String time = simpleDateFormat.format(date);
        String order_no = MD5Tool.MD5EncodeUtf8(time);


        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (sender_name.equals("") || sender_number.equals("") || sender_time.equals("") || fulladdress.equals("")){
            jsonObject.put("status", 100);
            jsonObject.put("message", "预约失败,请填入必要信息");
        }else if(!sender_number.matches("^[1](([3|5|8][\\d])|([4][5,6,7,8,9])|([6][5,6])|([7][3,4,5,6,7,8])|([9][8,9]))[\\d]{8}$")){
            jsonObject.put("status", 100);
            jsonObject.put("message", "预约失败,请填入正确手机号");
        }else{
            //添加order信息
            order.setUser_name(user.getName());
            order.setOrder_no(order_no);
            order.setSender_name(sender_name);
            order.setSender_number(sender_number);
            order.setSender_address(province + city + country + fulladdress);
            order.setSender_time(sender_time);
            order.setCreate_time(date);
            order.setUpdate_time(date);
            orderService.insertOrder(order);


//            //更新积分
//            if (weight.equals("5kg-15kg")){
//                add = 10;
//            }
//            if (weight.equals("15kg-25kg")){
//                add = 20;
//            }
//            if (weight.equals("25kg-35kg")){
//                add = 30;
//            }
//            if (weight.equals("35kg-200kg")){
//                add = 40;
//            }
//            if (weight.equals("200kg以上")){
//                add = 50;
//            }
//            user.setUpdate_time(date);
//            user.setIntegral(user.getIntegral()+add);
//            updateService.updateIntegral(user);


            //添加clothesOrderItem信息
            clothesOrderItem.setOrder_no(order_no);
            clothesOrderItem.setAddress(province);
            clothesOrderItem.setWeight(weight);
            clothesOrderItem.setCreate_time(date);
            clothesOrderItem.setUpdate_time(date);


            clothesOrderItemService.insertClothesOrderItem(clothesOrderItem);
            jsonObject.put("status", 200);
            jsonObject.put("message", "预约成功");
        }

        return jsonObject.toString();
    }

    //添加捐赠书本订单
    @RequestMapping("insertBookOrder")
    @ResponseBody
    public String insertBookOrder(@RequestParam("fullname") String sender_name, @RequestParam("fullnumber") String sender_number,
                                  @RequestParam("s_province") String province, @RequestParam("s_city") String city,
                                  @RequestParam("s_county") String country, @RequestParam("fulladdress") String fulladdress,
                                  @RequestParam("quantity") String quantity, @RequestParam("date-start") String sender_time,
                                  HttpServletRequest request){

        JSONObject jsonObject = new JSONObject();

        Order order = new Order();
        BookOrderItem bookOrderItem = new BookOrderItem();
        Date date = new Date();
        int add = 0;

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        String time = simpleDateFormat.format(date);
        String order_no = MD5Tool.MD5EncodeUtf8(time);


        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        order.setUser_name(user.getName());

        if (sender_name.equals("") || sender_number.equals("") || sender_time.equals("")){
            jsonObject.put("status", 100);
            jsonObject.put("message", "预约失败,请填入必要信息");
        }else if(!sender_number.matches("^[1](([3|5|8][\\\\d])|([4][4,5,6,7,8,9])|([6][2,5,6,7])|([7][^9])|([9][1,8,9]))[\\\\d]{8}$")){
            jsonObject.put("status", 100);
            jsonObject.put("message", "预约失败,请填入正确手机号");
        }else{
            order.setOrder_no(order_no);
            order.setSender_name(sender_name);
            order.setSender_number(sender_number);
            order.setSender_address(province + city + country + fulladdress);
            order.setSender_time(sender_time);
            order.setCreate_time(date);
            order.setUpdate_time(date);

            orderService.insertOrder(order);


            //更新积分
//            if (quantity.equals("5-20本")){
//                add = 10;
//            }
//            if (quantity.equals("20-35本")){
//                add = 20;
//            }
//            if (quantity.equals("35-50本")){
//                add = 30;
//            }
//            if (quantity.equals("50本以上")){
//                add = 40;
//            }
//
//            user.setUpdate_time(date);
//            user.setIntegral(user.getIntegral()+add);
//            updateService.updateIntegral(user);


            bookOrderItem.setOrder_no(order_no);
            bookOrderItem.setAddress(province);
            bookOrderItem.setQuantity(quantity);
            bookOrderItem.setCreate_time(date);
            bookOrderItem.setUpdate_time(date);

            bookOrderItemService.insertBookOrderItem(bookOrderItem);


            jsonObject.put("status", 200);
            jsonObject.put("message", "预约成功");
        }


        return jsonObject.toString();
    }




}
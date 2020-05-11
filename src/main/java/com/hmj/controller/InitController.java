package com.hmj.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hmj.entity.*;
import com.hmj.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Controller
@RequestMapping("init")
public class InitController {

    @Autowired
    private ClothesOrderItemService clothesOrderItemService;

    @Autowired
    private BookOrderItemService bookOrderItemService;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private ApplyService applyService;

    @Autowired
    private ShopUserOrderService shopUserOrderService;

    @Autowired
    private CheckOutService checkOutService;



    //页面加载时初始化显示统计数值
    @RequestMapping("initSum")
    @ResponseBody
    public String initSum(){

        List<ClothesOrderItem> clothesOrderItemList = null;

        List<BookOrderItem> bookOrderItemList = null;

        int clothOrderSum = 0;

        int bookOrderSum = 0;

        int userSum = userService.selectUser().size();

        int orderSum = orderService.selectAllOrder().size();


        //获取衣物订单内容并计数
        clothesOrderItemList = clothesOrderItemService.selectClothesOrderItem();
        for (ClothesOrderItem arr: clothesOrderItemList
        ) {
            if (arr.getWeight().equals("5kg-15kg")){
                clothOrderSum += 5;
            }else if (arr.getWeight().equals("15kg-25kg")){
                clothOrderSum += 15;
            }else if (arr.getWeight().equals("25kg-35kg")){
                clothOrderSum += 25;
            }else if (arr.getWeight().equals("35kg-200kg")){
                clothOrderSum += 35;
            }else{
                clothOrderSum += 200;
            }
        }

        //获取书籍订单内容并计数
        bookOrderItemList = bookOrderItemService.selectBookOrderItem();
        for (BookOrderItem arr: bookOrderItemList
        ) {
            if (arr.getQuantity().equals("5-20本")){
                bookOrderSum += 5;
            }else if (arr.getQuantity().equals("20-35本")){
                bookOrderSum += 20;
            }else if (arr.getQuantity().equals("35-50本")){
                bookOrderSum += 35;
            }else{
                bookOrderSum += 50;
            }
        }

        JSONArray array = new JSONArray();
        array.add(clothOrderSum);
        array.add(bookOrderSum);
        array.add(userSum);
        array.add(orderSum);

        return array.toJSONString();
    }


    //页面加载时初始化显示文章
    @RequestMapping("initArticle")
    @ResponseBody
    public String initArticle(){
        List<Article> articleList = articleService.selectNewArticle();
        JSONArray jsonArray = new JSONArray();
        for (int i = articleList.size() - 3; i < articleList.size(); i++){
            JSONObject jsonObject = new JSONObject();
            Calendar cal = Calendar.getInstance();
            cal.setTime(articleList.get(i).getTime());
            jsonObject.put("image", articleList.get(i).getImage());
            jsonObject.put("title", articleList.get(i).getTitle());
            jsonObject.put("day", cal.get(Calendar.DAY_OF_MONTH));
            jsonObject.put("month", cal.get(Calendar.MONTH)+1);
            jsonObject.put("year", cal.get(Calendar.YEAR));
            jsonObject.put("content", articleList.get(i).getContent());
            jsonArray.add(jsonObject);
            System.out.println(articleList.get(i).toString());
        }
        return jsonArray.toString();
    }

    //页面加载时初始化显示申请资助
    @RequestMapping("initApply")
    @ResponseBody
    public String initApply(){
        List<Apply> applyList = applyService.initShowApply();
        JSONArray jsonArray = new JSONArray();
        for (Apply arr: applyList
        ) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id", arr.getId());
            jsonObject.put("name", arr.getName());
            jsonObject.put("number", arr.getNumber());
            jsonObject.put("address", arr.getAddress());
            jsonObject.put("detail", arr.getDetail());
            jsonArray.add(jsonObject);
        }
//        for (int i = applyList.size() - 3; i < applyList.size(); i++){
//            JSONObject jsonObject = new JSONObject();
//            jsonObject.put("id", applyList.get(i).getId());
//            jsonObject.put("name", applyList.get(i).getName());
//            jsonObject.put("number", applyList.get(i).getNumber());
//            jsonObject.put("detail", applyList.get(i).getDetail());
//            jsonArray.add(jsonObject);
//        }
        return jsonArray.toJSONString();
    }


    @RequestMapping("initAllOrder")
    @ResponseBody
    public String initAllOrder(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        User user = (User)session.getAttribute("user");
        List<Order> list = orderService.selectAllOrderByName(user.getName());

        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject(true);
        for (Order arr: list
        ) {
            JSONObject dataObject = new JSONObject(true);
            dataObject.put("寄件人姓名", arr.getSender_name());
            dataObject.put("寄件人电话", arr.getSender_number());
            dataObject.put("寄件时间", arr.getSender_time());
            dataObject.put("收件地址", arr.getSender_address());
            dataObject.put("单号", arr.getOrder_no());
            if (arr.getStatus() == 0){
                dataObject.put("状态", "未完成");
            }else{
                dataObject.put("状态", "已完成");
            }
            jsonArray.add(dataObject);
        }

        jsonObject.put("total", list.size());
        jsonObject.put("rows", jsonArray);
        jsonObject.put("pageSize", 10);

        return  jsonObject.toJSONString();
    }

    @RequestMapping("initFinishedOrder")
    @ResponseBody
    public String initFinishedOrder(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        User user = (User)session.getAttribute("user");
        List<Order> list = orderService.selectFinishedOrder(user.getName());
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject(true);
        for (Order arr: list
        ) {
            JSONObject dataObject = new JSONObject(true);
            dataObject.put("寄件人姓名", arr.getSender_name());
            dataObject.put("寄件人电话", arr.getSender_number());
            dataObject.put("寄件时间", arr.getSender_time());
            dataObject.put("收件地址", arr.getSender_address());
            dataObject.put("单号", arr.getOrder_no());
            dataObject.put("状态", "已完成");
            jsonArray.add(dataObject);
        }

        jsonObject.put("total", list.size());
        jsonObject.put("rows", jsonArray);
        jsonObject.put("pageSize", 10);

        return  jsonObject.toJSONString();
    }

    @RequestMapping("initUnfinishedOrder")
    @ResponseBody
    public String initUnfinishedOrder(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        User user = (User)session.getAttribute("user");
        List<Order> list = orderService.selectUnfinishedOrder(user.getName());
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject(true);
        for (Order arr: list
        ) {
            JSONObject dataObject = new JSONObject(true);
            dataObject.put("寄件人姓名", arr.getSender_name());
            dataObject.put("寄件人电话", arr.getSender_number());
            dataObject.put("寄件时间", arr.getSender_time());
            dataObject.put("收件地址", arr.getSender_address());
            dataObject.put("单号", arr.getOrder_no());
            dataObject.put("状态", "未完成");
            jsonArray.add(dataObject);
        }

        jsonObject.put("total", list.size());
        jsonObject.put("rows", jsonArray);
        jsonObject.put("pageSize", 10);

        return  jsonObject.toJSONString();
    }

    @RequestMapping("initShopOrder")
    @ResponseBody
    public String initShopOrder(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        User user = (User)session.getAttribute("user");
        List<ShopUserOrder> shopUserOrderList = shopUserOrderService.selectByName(user.getName());
        List<CheckOut> checkOutList = new ArrayList<>();
        JSONObject jsonObject = new JSONObject(true);
        JSONArray jsonArray = new JSONArray();
        for (ShopUserOrder arr: shopUserOrderList
             ) {
            CheckOut checkOut = checkOutService.selectByOrderNo(arr.getOrder_no());
            if (checkOut != null){
                checkOutList.add(checkOut);
            }
        }
        for (CheckOut arr: checkOutList
             ) {
            JSONObject dataObject = new JSONObject(true);
            dataObject.put("收件人姓名",arr.getName());
            dataObject.put("收件人电话",arr.getNumber());
            dataObject.put("收件人地址",arr.getAddress());
            dataObject.put("单号",arr.getOrder_no());
            jsonArray.add(dataObject);
        }
        jsonObject.put("total", checkOutList.size());
        jsonObject.put("rows", jsonArray);
        jsonObject.put("pageSize", 10);

        return jsonObject.toJSONString();

    }


}
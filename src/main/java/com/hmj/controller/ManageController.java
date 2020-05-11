package com.hmj.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonAnyFormatVisitor;
import com.hmj.entity.*;
import com.hmj.service.*;
import com.hmj.tool.ImageTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("manage")
public class ManageController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private ClothesOrderItemService clothesOrderItemService;

    @Autowired
    private BookOrderItemService bookOrderItemService;

    @Autowired
    private ApplyService applyService;

    @Autowired
    private UpdateService updateService;

    @RequestMapping("manage_user")
    public String manageUser(){
        return "manage_user";
    }


    @RequestMapping("showAllOrder")
    @ResponseBody
    public String showAllOrder(){
        List<Order> orderList = orderService.selectAllOrder();
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject(true);
        for (Order arr: orderList
        ) {
            JSONObject dataObject = new JSONObject(true);
            dataObject.put("用户名", arr.getUser_name());
            dataObject.put("寄件人姓名", arr.getSender_name());
            dataObject.put("寄件人电话", arr.getSender_number());
            dataObject.put("寄件时间", arr.getSender_time());
            dataObject.put("收件地址", arr.getSender_address());
            dataObject.put("单号", arr.getOrder_no());
            if (arr.getStatus() == 0){
                dataObject.put("状态", "                                            <label class=\"switch switch-3d switch-primary mr-3\">" +
                        "                                                <input id='checkBox_"+ arr.getId() +"' type=\"checkbox\" class=\"switch-input\" name = '"+ arr.getId() +"' onclick='changeOrderStatus("+ arr.getId() +")'>" +
                        "                                                <span class=\"switch-label\"></span>" +
                        "                                                <span class=\"switch-handle\"></span>" +
                        "                                            </label>");
            }else{
                dataObject.put("状态", "                                            <label class=\"switch switch-3d switch-primary mr-3\">" +
                        "                                                <input id='checkBox_"+ arr.getId() +"' type=\"checkbox\" class=\"switch-input\" name = '"+ arr.getId() +"' onclick='changeOrderStatus("+ arr.getId() +")' checked = 'true'>" +
                        "                                                <span class=\"switch-label\"></span>" +
                        "                                                <span class=\"switch-handle\"></span>" +
                        "                                            </label>");
            }
            dataObject.put("操作","<div class=\"table-data-feature\">"+
                    "<button  onclick='allOrderDelete("+ arr.getId() +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">"+
                    "<i class=\"zmdi zmdi-delete\"></i>"+
                    "</button>"+
                    "</div>");
            dataObject.put("id", arr.getId());
            jsonArray.add(dataObject);
        }
        jsonObject.put("total", orderList.size());
        jsonObject.put("rows", jsonArray);
        jsonObject.put("pageSize", 10);
        return jsonObject.toJSONString();
    }


    @RequestMapping("showFinished")
    @ResponseBody
    public String showFinished(){
        List<Order> orderList = orderService.selectAllOrder();
        JSONArray jsonArray = new JSONArray();
        for (Order arr: orderList
        ) {
            JSONObject jsonObject = new JSONObject();
            if (arr.getStatus() == 1){
                jsonObject.put("id", arr.getId());
                jsonObject.put("user_name", arr.getUser_name());
                jsonObject.put("order_no", arr.getOrder_no());
                jsonObject.put("sender_name", arr.getSender_name());
                jsonObject.put("sender_number", arr.getSender_number());
                jsonObject.put("sender_address", arr.getSender_address());
                jsonObject.put("sender_time", arr.getSender_time());
                jsonArray.add(jsonObject);
            }
        }
        return jsonArray.toJSONString();
    }

    @RequestMapping("showUnFinished")
    @ResponseBody
    public String showUnFinished(){
        List<Order> orderList = orderService.selectAllOrder();
        JSONArray jsonArray = new JSONArray();
        for (Order arr: orderList
        ) {
            JSONObject jsonObject = new JSONObject();
            if (arr.getStatus() == 0){
                jsonObject.put("id", arr.getId());
                jsonObject.put("user_name", arr.getUser_name());
                jsonObject.put("order_no", arr.getOrder_no());
                jsonObject.put("sender_name", arr.getSender_name());
                jsonObject.put("sender_number", arr.getSender_number());
                jsonObject.put("sender_address", arr.getSender_address());
                jsonObject.put("sender_time", arr.getSender_time());
                jsonArray.add(jsonObject);
            }
        }
        return jsonArray.toJSONString();
    }

    @RequestMapping("showUser")
    @ResponseBody
    public String showUser(){
        List<User> userList = userService.selectAllUser();
        JSONArray jsonArray = new JSONArray();
        for (User arr: userList
        ) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id", arr.getId());
            jsonObject.put("name", arr.getName());
            jsonObject.put("password", arr.getPassword());
            jsonObject.put("email", arr.getEmail());
            jsonObject.put("role", arr.getRole());
            jsonArray.add(jsonObject);
        }
        return jsonArray.toJSONString();
    }

    @RequestMapping("showArticle")
    @ResponseBody
    public String showArticle(){
        List<Article> articleList = articleService.selectNewArticle();
        JSONArray jsonArray = new JSONArray();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");

        for (Article arr: articleList
        ) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id", arr.getId());
            jsonObject.put("title", arr.getTitle());
            jsonObject.put("content", arr.getContent());
            jsonObject.put("image", arr.getImage());
            jsonObject.put("time", simpleDateFormat.format(arr.getTime()));
            jsonArray.add(jsonObject);
        }
        return jsonArray.toJSONString();
    }

    @RequestMapping("showApply")
    @ResponseBody
    public String showApply(){
        List<Apply> applyList = applyService.selectAllApply();
        JSONArray jsonArray = new JSONArray();
        for (Apply arr: applyList
        ) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id", arr.getId());
            jsonObject.put("name", arr.getName());
            jsonObject.put("number", arr.getNumber());
            jsonObject.put("address", arr.getAddress());
            jsonObject.put("detail", arr.getDetail());
            jsonObject.put("image", arr.getImage());
            jsonObject.put("status", arr.getStatus());
            jsonObject.put("create_time", arr.getCreate_time());
            jsonObject.put("update_time", arr.getUpdate_time());
            jsonArray.add(jsonObject);
        }
        return jsonArray.toJSONString();
    }


    @RequestMapping("addArticle")
    @ResponseBody
    public String addArticle(@RequestParam("title") String title,
//                             @RequestParam("image") String image,
                             @RequestParam("article_file") MultipartFile file,
                             @RequestParam("time") String time,
                             @RequestParam("content") String content) throws ParseException, IOException {
        JSONObject jsonObject = new JSONObject();

        String image = ImageTool.uploadImage(file);
//        if(!image.matches("../images/\\S+")){
//            jsonObject.put("status", 100);
//            jsonObject.put("message", "请输入正确的图片路径");
//        }else
        if (title.length() == 0 || time.length() == 0 || content.length() == 0 || file.isEmpty()){
            jsonObject.put("status", 200);
            jsonObject.put("message", "添加失败,必填内容不能为空");
        }else if (!time.matches("^[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}")){
            jsonObject.put("status", 300);
            jsonObject.put("message", "请输入正确的时间格式");
        }else {
            jsonObject.put("status", 400);
            jsonObject.put("message", "添加成功");

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

            Date date = sdf.parse(time);



            Article article = new Article();
            article.setTitle(title);
            article.setImage("../images/" + image);
            article.setTime(date);
            article.setContent(content);
            article.setCreate_time(new Date());
            article.setUpdate_time(new Date());

            articleService.addArticle(article);
        }
        return jsonObject.toString();

    }

    @RequestMapping("updateArticle")
    @ResponseBody
    public String updateArticle(@RequestParam("id") int id,
                                @RequestParam("title") String title,
//                             @RequestParam("image") String image,
                                @RequestParam("article_file") MultipartFile file,
                                @RequestParam("time") String time,
                                @RequestParam("content") String content) throws ParseException, IOException {
        JSONObject jsonObject = new JSONObject();
        String image = ImageTool.uploadImage(file);
//        if(!image.matches("../images/\\S+")){
//            jsonObject.put("status", 100);
//            jsonObject.put("message", "请输入正确的图片路径");
//        }else
        if (title.length() == 0 || time.length() == 0 || content.length() == 0){
            jsonObject.put("status", 200);
            jsonObject.put("message", "添加失败,必填内容不能为空");
        }else if (!time.matches("^[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}")){
            jsonObject.put("status", 300);
            jsonObject.put("message", "请输入正确的时间格式");
        }else {
            jsonObject.put("status", 400);
            jsonObject.put("message", "更新成功");

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

            Date date = sdf.parse(time);



            Article article = new Article();
            article.setId(id);
            article.setTitle(title);
            article.setImage("../images/" + image);
            article.setTime(date);
            article.setContent(content);
            article.setUpdate_time(new Date());

            updateService.updateArticle(article);
        }
        return jsonObject.toString();

    }




    @RequestMapping("chart_data")
    @ResponseBody
    public String chartData(){
        List<Integer> clothesDate = clothesOrderItemService.selectClotherYearOrder();
        List<Integer> bookDate = bookOrderItemService.selectBookYearOrder();
        List<Integer> userDate = userService.selectUserYear();
        JSONObject jsonObject= new JSONObject();
        jsonObject.put("clothesYearSum",clothesDate);
        jsonObject.put("bookYearSum",bookDate);
        jsonObject.put("userYearSum", userDate);

        return jsonObject.toJSONString();
    }

    @RequestMapping("allOrderDelete")
    @ResponseBody
    public String allOrderDelete(String deleteValue){
        Boolean flag = false;
        int id = Integer.parseInt(deleteValue);
        JSONObject jsonObject = new JSONObject();
        String order_no = orderService.selectOrderById(id);
        if (clothesOrderItemService.delete(order_no) == 1){
            flag = true;
        }
        if (bookOrderItemService.delete(order_no) == 1){
            flag = true;
        }
        if ( orderService.deleteOrder(id) == 1 && flag){
            jsonObject.put("message", "删除成功");
            jsonObject.put("status", 100);
        }else {
            jsonObject.put("message", "删除失败");
            jsonObject.put("status", 200);
        }
        return jsonObject.toJSONString();
    }

    @RequestMapping("userDelete")
    @ResponseBody
    public String userDelete(String deleteUserId){
        int id = Integer.parseInt(deleteUserId);
        JSONObject jsonObject = new JSONObject();
        if (userService.deleteUser(id) == 1){
            jsonObject.put("status", 100);
            jsonObject.put("message", "删除成功");
        }else{
            jsonObject.put("status", 200);
            jsonObject.put("message", "删除失败");
        }
        return jsonObject.toString();
    }

    @RequestMapping("articleDelete")
    @ResponseBody
    public String articleDelete(String deleteArticleId){
        int id = Integer.parseInt(deleteArticleId);
        JSONObject jsonObject = new JSONObject();
        if (articleService.deleteArticle(id) == 1){
            jsonObject.put("status", 100);
            jsonObject.put("message", "删除成功");
        }else{
            jsonObject.put("status", 200);
            jsonObject.put("message", "删除失败");
        }
        return jsonObject.toString();
    }

    @RequestMapping("applyDelete")
    @ResponseBody
    public String applyDelete(String deleteApplyId){
        int id = Integer.parseInt(deleteApplyId);
        JSONObject jsonObject = new JSONObject();
        if (applyService.deleteApply(id) == 1){
            jsonObject.put("status", 100);
            jsonObject.put("message", "删除成功");
        }else{
            jsonObject.put("status", 200);
            jsonObject.put("message", "删除失败");
        }
        return jsonObject.toString();
    }

    @RequestMapping("searchOrder")
    @ResponseBody
    public String searchOrder(@RequestParam("searchNum") String info){

        JSONArray jsonArray = new JSONArray();
        List<Order> orderListByNo = orderService.searchOrder(info);
        List<Order> orderListByName = orderService.selectAllOrderByName(info);
        if (orderListByNo.size() != 0){
            for (Order arr: orderListByNo
            ) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("success", 100);
                jsonObject.put("message", "查找成功");
                jsonObject.put("id", arr.getId());
                jsonObject.put("user_name", arr.getUser_name());
                jsonObject.put("order_no", arr.getOrder_no());
                jsonObject.put("sender_name", arr.getSender_name());
                jsonObject.put("sender_number", arr.getSender_number());
                jsonObject.put("sender_address", arr.getSender_address());
                jsonObject.put("sender_time", arr.getSender_time());
                if (arr.getStatus() == 0){
                    jsonObject.put("status", "未完成");
                }else{
                    jsonObject.put("status", "已完成");
                }
                jsonArray.add(jsonObject);
            }
        }else if (orderListByName.size() != 0){
            for (Order arr: orderListByName
            ) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("success", 100);
                jsonObject.put("message", "查找成功");
                jsonObject.put("id", arr.getId());
                jsonObject.put("user_name", arr.getUser_name());
                jsonObject.put("order_no", arr.getOrder_no());
                jsonObject.put("sender_name", arr.getSender_name());
                jsonObject.put("sender_number", arr.getSender_number());
                jsonObject.put("sender_address", arr.getSender_address());
                jsonObject.put("sender_time", arr.getSender_time());
                if (arr.getStatus() == 0){
                    jsonObject.put("status", "未完成");
                }else{
                    jsonObject.put("status", "已完成");
                }
                jsonArray.add(jsonObject);
            }
        }else{
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("success", 200);
            jsonObject.put("message", "查找失败");
            jsonArray.add(jsonObject);
        }
        return jsonArray.toString();
    }

    @RequestMapping("changeStatus")
    @ResponseBody
    public String changeStatus(@RequestParam("applyId") int id,
                               @RequestParam("status") int status){
        JSONObject jsonObject = new JSONObject();
        Apply apply = new Apply();
        apply.setId(id);
        apply.setStatus(status);
        updateService.updateApply(apply);
        jsonObject.put("id", id);
        jsonObject.put("status", status);
        jsonObject.put("message", "更改成功");
        return jsonObject.toJSONString();

    }

    @RequestMapping("changeOrderStatus")
    @ResponseBody
    public String changeOrderStatus(@RequestParam("applyId") int id,
                               @RequestParam("status") int status,
                                    HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();

        String order_no = orderService.selectOrderById(id);
        String user_name = orderService.selectUserNameById(id);
        User user = userService.selectByName(user_name);
        ClothesOrderItem clothesOrderItem = clothesOrderItemService.selectClothesItemByOrderNo(order_no);
        BookOrderItem bookOrderItem = bookOrderItemService.selectBookItemByOrderNo(order_no);
        int add = 0;
        if (clothesOrderItem!= null){
            if (clothesOrderItem.getWeight().equals("5kg-15kg")){
                add = 10;
            }
            if (clothesOrderItem.getWeight().equals("15kg-25kg")){
                add = 20;
            }
            if (clothesOrderItem.getWeight().equals("25kg-35kg")){
                add = 30;
            }
            if (clothesOrderItem.getWeight().equals("35kg-200kg")){
                add = 40;
            }
            if (clothesOrderItem.getWeight().equals("200kg以上")){
                add = 50;
            }
        }
        if (bookOrderItem!= null){
            if (bookOrderItem.getQuantity().equals("5-20本")){
                add = 10;
            }
            if (bookOrderItem.getQuantity().equals("20-35本")){
                add = 20;
            }
            if (bookOrderItem.getQuantity().equals("35-50本")){
                add = 30;
            }
            if (bookOrderItem.getQuantity().equals("50本以上")){
                add = 40;
            }
        }
        user.setIntegral(user.getIntegral()+add);
        updateService.updateIntegral(user);
        JSONObject jsonObject = new JSONObject();
        Order order = new Order();
        order.setId(id);
        order.setStatus(status);
        updateService.updateOrder(order);
        jsonObject.put("id", id);
        jsonObject.put("status", status);
        jsonObject.put("message", "更改成功");
        return jsonObject.toJSONString();

    }

    @RequestMapping("initClothesMap")
    @ResponseBody
    public String initClothesMap(){
        List<ClothesOrderItem> clothesOrderItemList = clothesOrderItemService.selectClothesOrderItem();
        int sum = 0;

        JSONArray jsonArray = new JSONArray();
        for (ClothesOrderItem arr: clothesOrderItemList
        ) {
            JSONObject jsonObject = new JSONObject();
            if (arr.getWeight().equals("5kg-15kg")){
                sum = 5;
            }
            if (arr.getWeight().equals("15kg-25kg")){
                sum = 15;
            }
            if (arr.getWeight().equals("25kg-35kg")){
                sum = 25;
            }
            if (arr.getWeight().equals("35kg-200kg")){
                sum = 35;
            }
            if (arr.getWeight().equals("200kg以上")){
                sum = 200;
            }
            jsonObject.put("address", arr.getAddress());
            jsonObject.put("sum", sum);
            jsonArray.add(jsonObject);
        }
        return jsonArray.toJSONString();
    }


    @RequestMapping("initBookMap")
    @ResponseBody
    public String initBookMap() {
        List<BookOrderItem> bookOrderItemList = bookOrderItemService.selectBookOrderItem();
        int sum = 0;

        JSONArray jsonArray = new JSONArray();
        for (BookOrderItem arr : bookOrderItemList
        ) {
            JSONObject jsonObject = new JSONObject();
            if (arr.getQuantity().equals("5-20本")) {
                sum = 5;
            }
            if (arr.getQuantity().equals("20-35本")) {
                sum = 20;
            }
            if (arr.getQuantity().equals("35-50本")) {
                sum = 35;
            }
            if (arr.getQuantity().equals("50本以上")) {
                sum = 50;
            }
            jsonObject.put("address", arr.getAddress());
            jsonObject.put("sum", sum);
            jsonArray.add(jsonObject);
        }
        return jsonArray.toJSONString();
    }
}
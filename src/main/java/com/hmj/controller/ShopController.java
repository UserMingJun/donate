package com.hmj.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hmj.entity.*;
import com.hmj.service.*;
import com.hmj.tool.MD5Tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    private ShopUserOrderService shopUserOrderService;

    @Autowired
    private ProductItemService productItemService;

    @Autowired
    private ProductService productService;

    @Autowired
    private CheckOutService checkOutService;

    @Autowired
    private UpdateService updateService;




    @RequestMapping("addToCart")
    public String addToCart(@RequestParam("theQuantity") int quantity,
                            HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        String time = simpleDateFormat.format(date);
        String order_no = MD5Tool.MD5EncodeUtf8(time);
        User user = (User)session.getAttribute("user");
        Product product = (Product) session.getAttribute("product");

        ShopUserOrder shopUserOrder = new ShopUserOrder();
        shopUserOrder.setOrder_no(order_no);
        shopUserOrder.setUser_name(user.getName());
        shopUserOrder.setCreate_time(date);
        shopUserOrder.setUpdate_time(date);
        shopUserOrderService.insertShopUserOrder(shopUserOrder, product, quantity);
        return "shop_index";

    }

    @RequestMapping("showCart")
    @ResponseBody
    public String showCart(HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        User user = (User)session.getAttribute("user");
        ShopUserOrder shopUserOrder = new ShopUserOrder();
        shopUserOrder.setUser_name(user.getName());
        String order_no = shopUserOrderService.selectShopUserOrder(shopUserOrder).getOrder_no();
        session.setAttribute("shop_order_no", order_no);
        List<ProductItem> productItemList = productItemService.selectByOrderNo(order_no);
        JSONArray jsonArray = new JSONArray();
        for (ProductItem arr : productItemList
             ) {
            JSONObject jsonObject = new JSONObject();
            Product product = productService.selectById(arr.getProduct_id());
            jsonObject.put("id", arr.getId());
            jsonObject.put("image", product.getMain_image());
            jsonObject.put("name", product.getName());
            jsonObject.put("integral", arr.getIntegral());
            jsonObject.put("quantity", arr.getQuantity());
            jsonObject.put("total_integral", arr.getTotal_integral());
            jsonArray.add(jsonObject);
        }
        return jsonArray.toJSONString();
    }

    @RequestMapping("checkout")
    @ResponseBody
    public String checkOut(@RequestParam("name") String name,
                           @RequestParam("number") String number,
                           @RequestParam("address") String address,
                           HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        Date date = new Date();
        String order_no = (String) session.getAttribute("shop_order_no");
        CheckOut checkOut = new CheckOut();
        JSONObject jsonObject = new JSONObject();
        checkOut.setOrder_no(order_no);
        checkOut.setName(name);
        checkOut.setNumber(number);
        checkOut.setAddress(address);
        checkOut.setCreate_time(date);
        checkOut.setUpdate_time(date);
        if (checkOutService.isIntegralEnough(order_no)){
            ShopUserOrder shopUserOrder = new ShopUserOrder();
            shopUserOrder.setStatus(1);
            shopUserOrder.setOrder_no(order_no);
            updateService.updateShopUserOrder(shopUserOrder);
            checkOutService.insertCheckOut(checkOut);
            jsonObject.put("status", 100);
            jsonObject.put("message", "兑换成功");
        }else{
            jsonObject.put("status", 200);
            jsonObject.put("message", "兑换失败，积分不足");
        }
        return jsonObject.toJSONString();
    }


    @RequestMapping("deleteProduct")
    @ResponseBody
    public String deleteProduct(@RequestParam("id") int id){
        JSONObject jsonObject = new JSONObject();
        if (productItemService.deleteFromCart(id) == 1){
            jsonObject.put("status", 100);
            jsonObject.put("message", "删除成功");
        }else {
            jsonObject.put("status", 200);
            jsonObject.put("message", "删除失败");
        }
        return jsonObject.toJSONString();
    }



}

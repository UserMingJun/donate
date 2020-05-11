package com.hmj.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hmj.entity.Order;
import com.hmj.entity.Product;
import com.hmj.entity.User;
import com.hmj.service.OrderService;
import com.hmj.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProductService productService;


    //进入主页面
    @RequestMapping("index")
    public String index(){
        return "index";
    }

    //进入登陆页面
    @RequestMapping("login")
    public String login(){
        return "login";
    }

    //进入捐赠衣物页面
    @RequestMapping("donate_clothes")
    public String donate(){
        return "donate_clothes";
    }

    //进入捐赠书本页面
    @RequestMapping("donate_book")
    public String donateBook(){
        return "donate_book";
    }

    //进入申请资助页面
    @RequestMapping("donate_apply")
    public String donateApply(){
        return "donate_apply";
    }

    //进入个人中心页面，,进入该页面时按照登陆的用户名查找所有订单
    @RequestMapping("info")
    public String info(){
//        HttpSession session = httpServletRequest.getSession();
//        User user = (User)session.getAttribute("user");
//        List<Order> list = orderService.selectAllOrderByName(user.getName());
//        session.setAttribute("allOrder",list);
        return "info";
    }


    //进入未完成订单页面,进入该页面时按照登陆的用户名查找所有未完成订单
    @RequestMapping("infoUnfinished")
    public String infoUnfinished(){
//        HttpSession session = httpServletRequest.getSession();
//        User user = (User)session.getAttribute("user");
//        List<Order> list = orderService.selectUnfinishedOrder(user.getName());
//        session.setAttribute("unfinishedList", list);
        return "info_unfinished";
    }

    //进入完成订单页面,进入该页面时按照登陆的用户名查找所有完成订单
    @RequestMapping("infoFinished")
    public String infoFinished(HttpServletRequest httpServletRequest){
//        HttpSession session = httpServletRequest.getSession();
//        User user = (User)session.getAttribute("user");
//        List<Order> list = orderService.selectFinishedOrder(user.getName());
//        session.setAttribute("finishedList", list);
        return "info_finished";
    }

    //进入搜索页面
    @RequestMapping("infoSearch")
    public String infoSearch(){
        return "info_search";
    }

    //进入管理页面
    @RequestMapping("manage")
    public String manage(){
        return "manage";
    }

    //进入管理完成订单页面
    @RequestMapping("manage_finished")
    public String manageFinished(){
        return "manage_finished";
    }

    //进入管理未完成订单页面
    @RequestMapping("manage_unfinished")
    public String manageUnfinished(){
        return "manage_unfinished";
    }

    //进入管理用户页面
    @RequestMapping("manage_user")
    public String manageUser(){
        return "manage_user";
    }

    //进入管理文章页面
    @RequestMapping("manage_article")
    public String manageArticle(){
        return "manage_article";
    }

    //进入管理增加文章页面
    @RequestMapping("manage_add_article")
    public String manageAddArticle(){
        return "manage_add_article";
    }

    //进入管理图表页面
    @RequestMapping("manage_chart")
    public String manageChart(){
        return "manage_chart";
    }

    //进入管理搜索页面
    @RequestMapping("search")
    public String search(){
        return "search";
    }

    //进入管理申请页面
    @RequestMapping("manage_apply")
    public String manageApply(){
        return "manage_apply";
    }

    //进入地图页面
    @RequestMapping("map")
    public String map(){
        return "map";
    }

    //进入商城首页
    @RequestMapping("shop_index")
    public String shopIndex(){
        return "shop_index";
    }

    //进入商城购物页面
    @RequestMapping("shop_shop")
    public String shopShop(){
        return "shop_shop";
    }

    //进入商城物品页面
    @RequestMapping("shop_cart")
    public String shopCart(){
        return "shop_cart";
    }

    //进入商城兑换订单页面
    @RequestMapping("shop_checkout")
    public String shopCheckout(){
        return "shop_checkout";
    }

    //进入单个物品详情页面
    @RequestMapping("shop_product_detail")
    public String shopProductDetail(@RequestParam("product_id") int product_id,
                                    HttpServletRequest httpServletRequest){
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("product", productService.selectById(product_id));
        return "shop_product_detail";
    }

    //进入查看兑换订单页面
    @RequestMapping("info_shop")
    public String infoShop(){
        return "info_shop";
    }



//    public JSONObject test(){
//
//        JSONObject jsonObject1 = new JSONObject();
//
//        User user = new User();
//        user.setId(1);
//
//
//
//        jsonObject1.put("title", "测试成功" + userService.find(user).getName());
//        return jsonObject1;
//    }


}
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/2
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>兑换商城</title>

    <!-- Favicon  -->
    <link rel="icon" src="flower.png">

    <link rel="stylesheet" type="text/css" href="../css/shop_animate.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap_shop.min.css">
    <link rel="stylesheet" type="text/css" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="../css/magnific-popup_shop.css">
    <link rel="stylesheet" type="text/css" href="../css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/style_shop.css">
    <link rel="stylesheet" href="../css/core-style.css">

</head>
<body>
<div class="adcenter"></div>
<!-- Search Wrapper Area Start -->
<div class="search-wrapper section-padding-100">
    <div class="search-close">
        <i class="fa fa-close" aria-hidden="true"></i>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="search-content">
                    <form action="#" method="get">
                        <input type="search" name="search" id="search" placeholder="Type your keyword...">
                        <button type="submit"><img src="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/search.png" alt=""></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Search Wrapper Area End -->

<!-- ##### Main Content Wrapper Start ##### -->
<div class="main-content-wrapper d-flex clearfix">

    <!-- Mobile Nav (max width 767px)-->
    <div class="mobile-nav">
        <!-- Navbar Brand -->
        <div class="amado-navbar-brand">
            <a href="index.jsp"><img src="../images/logo.png" alt=""></a>
        </div>
        <!-- Navbar Toggler -->
        <div class="amado-navbar-toggler">
            <span></span><span></span><span></span>
        </div>
    </div>

    <!-- Header Area Start -->
    <header class="header-area clearfix">
        <!-- Close Icon -->
        <div class="nav-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <!-- Logo -->
        <div class="logo">
            <a href="/menu/index"><img src="../images/logo.png" alt=""></a>
        </div>
        <!-- Amado Nav -->
        <nav class="amado-nav">
            <ul>
                <li class="active"><a href="/menu/shop_index">兑换物品</a></li>
                <li><a href="/menu/shop_cart">购物车</a></li>
                <li><a href="/menu/shop_checkout">兑换订单</a></li>
            </ul>
        </nav>
        <!-- Button Group -->
        <%--<div class="amado-btn-group mt-30 mb-100">--%>
            <%--<a href="login.jsp" class="btn amado-btn mb-15" id="useraction">Log In</a>--%>
            <%--<form action="ExitServlet" method="post">--%>
                <%--<%--%>
                    <%--out.print("<p id='exitaction'>" + "你好，"+ Const.currentUser + "</p>");--%>
                <%--%>--%>
                <%--<input type="submit" value = "EXIT" class="btn amado-btn mb-15" id="exitaction"/>--%>
            <%--</form>--%>

        <%--</div>--%>
        <%--<%--%>
            <%--if (Const.isLog == true){--%>
                <%--out.println("<style>#useraction{display:none;}</style>");--%>
            <%--}else{--%>
                <%--out.println("<style>#exitaction{display:none;}</style>");--%>
            <%--}--%>
        <%--%>--%>
        <!-- Social Button -->

    </header>
    <!-- Header Area End -->

    <!-- Product Catagories Area Start -->
    <div class="products-catagories-area clearfix">
        <div class="amado-pro-catagory clearfix">

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=13">
                    <img src="../images/满天星/满天星4.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 32</p>
                        <h4>干花花束家居摆设小清新满天星</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=4">
                    <img src="../images/多肉/多肉5.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 12</p>
                        <h4>AK多肉花卉园艺</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=5">
                    <img src="../images/抱枕/抱枕1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 100</p>
                        <h4>北欧抱枕</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=20">
                    <img src="../images/衣架/衣架1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 600</p>
                        <h4>实木玄关衣帽架</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=2">
                    <img src="../images/雨伞/雨伞1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 95</p>
                        <h4>ins全自动雨伞</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=8">
                    <img src="../images/马克杯/马克杯1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 185</p>
                        <h4>日式竖纹咖啡杯碟套装</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=15">
                    <img src="../images/相框/相框1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 358</p>
                        <h4>实木简约画框摆件</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=9">
                    <img src="../images/纸巾盒/纸巾盒1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 500</p>
                        <h4>鹿角纸巾盒</h4>
                    </div>
                </a>
            </div>

            <!-- Single Catagory -->
            <div class="single-products-catagory clearfix">
                <a href="/menu/shop_product_detail?product_id=3">
                    <img src="../images/门垫/门垫1.jpg" alt="">
                    <!-- Hover Content -->
                    <div class="hover-content">
                        <div class="line"></div>
                        <p>所需积分 169</p>
                        <h4>入户门垫</h4>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- Product Catagories Area End -->
</div>
<!-- ##### Main Content Wrapper End ##### -->

<!-- ##### Newsletter Area Start ##### -->
<%--<section class="newsletter-area section-padding-100-0">--%>
    <%--<div class="container">--%>
        <%--<div class="row align-items-center">--%>
            <%--<!-- Newsletter Text -->--%>
            <%--<div class="col-12 col-lg-6 col-xl-7">--%>
                <%--<div class="newsletter-text mb-100">--%>
                    <%--<h2>Subscribe to enjoy <span>20% Discount</span></h2>--%>
                    <%--<p>Rich family flower shop now open subscription can enjoy unprecedented discounts</p>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<!-- Newsletter Form -->--%>
            <%--<div class="col-12 col-lg-6 col-xl-5">--%>
                <%--<div class="newsletter-form mb-100">--%>
                    <%--<form action="MailServlet" method="post">--%>
                        <%--<input type="email" name="email" class="nl-email" placeholder="Your E-mail">--%>
                        <%--<input type="submit" value="Subscribe">--%>
                    <%--</form>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</section>--%>
<!-- ##### Newsletter Area End ##### -->

<!-- ##### Footer Area Start ##### -->
<footer class="footer_area clearfix">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12 col-lg-8">
                <div class="single_widget_area">
                    <!-- Footer Menu -->
                    <div class="footer_menu">
                        <nav class="navbar navbar-expand-lg justify-content-end">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                            <div class="collapse navbar-collapse" id="footerNavContent">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/menu/shop_index">兑换物品</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/menu/shop_cart">购物车</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/menu/shop_checkout">兑换订单</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ##### Footer Area End ##### -->

<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
<script src="../js/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="../js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="../bootstrap_shop.min.js"></script>
<!-- Plugins js -->
<script src="../js/plugins.js"></script>
<!-- Active js -->
<script src="../js/active.js"></script>


</body>
</html>
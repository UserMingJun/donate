<%@ page import="com.hmj.entity.Product" %>
<%@ page import="com.hmj.service.ProductService" %>
<%@ page import="com.hmj.service.impl.ProductServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/2
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>物品详情</title>

    <!-- Favicon  -->
    <%--<link rel="icon" href="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/favicon.ico">--%>

    <!-- Core Style CSS -->

    <link rel="stylesheet" type="text/css" href="../css/shop_animate.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap_shop.min.css">
    <link rel="stylesheet" type="text/css" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="../css/magnific-popup_shop.css">
    <link rel="stylesheet" type="text/css" href="../css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/core-style.css">
    <link rel="stylesheet" href="../css/style_detail.css">
    <%--<link rel="stylesheet" href="../css/style_shop.css">--%>

</head>
<body>
<%

    Product product = (Product) session.getAttribute("product");
%>
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
            <a href="index.jsp"><img src="../images/logo.png" alt=""></a>
        </div>
        <!-- Amado Nav -->
        <nav class="amado-nav">
            <ul>
                <li><a href="/menu/shop_index">兑换物品</a></li>
                <li class="active"><a href="#">物品详情</a></li>
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
            <%--request.setCharacterEncoding("utf-8");--%>
            <%--ProductService productService = new ProductServiceImpl();--%>
            <%--String product_id = request.getParameter("product_id");--%>
            <%--Product product = productService.getById(Integer.parseInt(product_id));--%>
            <%--out.println("<input type='hidden' value='" + Const.isLog + "' id='isLog'>");--%>
        <%--%>--%>
        <!-- Cart Menu -->
        <%--<div class="cart-fav-search mb-100">--%>
            <%--<a href="cart.jsp" class="cart-nav"><img src="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/cart.png" alt=""> Cart--%>
                <%--<span>--%>
                <%--<%--%>
                    <%--OrderService orderService = new OrderServiceImpl();--%>
                    <%--OrderItemService orderItemService = new OrderItemServiceImpl();--%>
                    <%--if(Const.isLog && Const.currentOrder != null){--%>
                        <%--String order_no = Const.currentOrder.getOrder_no();--%>
                        <%--out.println("(" + orderItemService.getProductCategory(order_no) + ")");--%>
                    <%--}else{--%>
                        <%--out.println("(0)");--%>
                    <%--}--%>

                <%--%></span>--%>
            <%--</a>--%>
            <%--<a href="#" class="fav-nav"><img src="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/favorites.png" alt=""> Favourite</a>--%>
            <%--<a href="#" class="search-nav"><img src="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/search.png" alt=""> Search</a>--%>
        <%--</div>--%>
        <!-- Social Button -->
        <%--<div class="social-info d-flex justify-content-between">--%>
            <%--<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>--%>
            <%--<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>--%>
            <%--<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>--%>
            <%--<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>--%>
        <%--</div>--%>
    </header>
    <!-- Header Area End -->

    <!-- Product Details Area Start -->
    <div class="single-product-area section-padding-100 clearfix">
        <div class="container-fluid">


            <div class="row">
                <div class="col-12 col-lg-7">
                    <div class="single_product_thumb">
                        <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <%--<%--%>
                                    <%--String mainImage = product.getMain_image();--%>
                                    <%--String nextImage = ImageTool.nextImageName(mainImage);--%>
                                <%--%>--%>
                                <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(<%=product.getMain_image().split("!")[0]%>);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(<%=product.getMain_image().split("!")[1]%>);">
                                </li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="<%=product.getMain_image().split("!")[0]%>" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="<%=product.getMain_image().split("!")[1]%>" alt="Second slide">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-5">
                    <div class="single_product_desc">
                        <!-- Product Meta Data -->
                        <div class="product-meta-data">
                            <div class="line"></div>
                            <p class="product-price">￥<%=product.getPrice()%></p>
                            <h3><%=product.getName()%></h3>
                            <!-- Ratings & Review -->
                            <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                <div class="ratings">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                            </div>
                            <!-- Avaiable -->
                            <p class="avaibility"><i class="fa fa-circle"></i> In Stock</p>
                        </div>

                        <div class="short_overview my-5">
                            <p class="product-detail"><%=product.getDetail()%></p>
                        </div>

                        <!-- Add to Cart Form -->
                        <form class="cart clearfix"  action="/shop/addToCart" method="post">
                            <div class="cart-btn d-flex mb-50">
                                <p>Qty</p>
                                <div class="quantity">
                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="theQuantity" value="1">
                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                                </div>
                            </div>
                            <%--<%--%>
                                <%--out.println("<input type='hidden' value='" + product.getProduct_id() + "' name='product_id'>");--%>
                                <%--out.println("<input type='hidden' value='" + product.getPrice() + "' name='price'>");--%>
                            <%--%>--%>
                            <button type="submit" id= "addtocart" name="addtocart" value="5" class="btn amado-btn">Add to cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Details Area End -->
</div>
<!-- ##### Main Content Wrapper End ##### -->

<!-- ##### Newsletter Area Start ##### -->

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
<script src="../js/bootstrap_shop.min.js"></script>
<!-- Plugins js -->
<script src="../js/plugins.js"></script>
<!-- Active js -->
<script src="../js/active.js"></script>



</body>

</html>

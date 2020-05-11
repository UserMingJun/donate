
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>购物车</title>

    <!-- Favicon  -->

    <link rel="stylesheet" type="text/css" href="../css/shop_animate.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap_shop.min.css">
    <link rel="stylesheet" type="text/css" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="../css/magnific-popup_shop.css">
    <link rel="stylesheet" type="text/css" href="../css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../css/owl.carousel.css">
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
                <a href="/menu/index"><img src="../images/logo.png" alt=""></a>
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
                    <li><a href="/menu/shop_index">兑换物品</a></li>
                    <li class="active"><a href="/menu/shop_cart">购物车</a></li>
                    <li><a href="/menu/shop_checkout">兑换订单</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <%--<div class="amado-btn-group mt-30 mb-100">--%>
                <%--<a href="login.jsp" class="btn amado-btn mb-15" id="useraction">Log In</a>--%>
                <%--&lt;%&ndash;<form action="ExitServlet" method="post">&ndash;%&gt;--%>
                	<%--&lt;%&ndash;&lt;%&ndash;%>--%>
                		<%--&lt;%&ndash;out.print("<p id='exitaction'>" + "你好，"+ Const.currentUser + "</p>");&ndash;%&gt;--%>
                	<%--&lt;%&ndash;%>&ndash;%&gt;--%>
                	<%--&lt;%&ndash;<input type="submit" value = "EXIT" class="btn amado-btn mb-15" id="exitaction"/>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
            <%--</div>--%>
             <%--<%--%>
				<%--if (Const.isLog == true){--%>
                    <%--out.println("<style>#useraction{display:none;}</style>");--%>
                <%--}else{--%>
                	<%--out.println("<style>#exitaction{display:none;}</style>");--%>
                <%--}--%>
			<%--%>--%>
            <!-- Cart Menu -->
            <%--<div class="cart-fav-search mb-100">--%>
                <%--<a href="shop_cart.jsp" class="cart-nav"><img src="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/cart.png" alt=""> Cart--%>
                    <%--<span>--%>
                <%--&lt;%&ndash;&lt;%&ndash;%>--%>
                	<%--&lt;%&ndash;OrderService orderService = new OrderServiceImpl();&ndash;%&gt;--%>
                	<%--&lt;%&ndash;orderItemService = new OrderItemServiceImpl();&ndash;%&gt;--%>
                	<%--&lt;%&ndash;if(Const.isLog && Const.currentOrder != null){&ndash;%&gt;--%>
                		<%--&lt;%&ndash;String order_no = Const.currentOrder.getOrder_no();&ndash;%&gt;--%>
                    	<%--&lt;%&ndash;out.println("(" + orderItemService.getProductCategory(order_no) + ")");	&ndash;%&gt;--%>
                	<%--&lt;%&ndash;}else{&ndash;%&gt;--%>
                		<%--&lt;%&ndash;out.println("(0)");&ndash;%&gt;--%>
                	<%--&lt;%&ndash;}&ndash;%&gt;--%>
                    <%--&lt;%&ndash;&ndash;%&gt;--%>
				<%--&lt;%&ndash;%></span>&ndash;%&gt;--%>
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

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>购物车</h2>
                        </div>

                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>图片</th>
                                        <th>商品名称</th>
                                        <th>所需积分</th>
                                        <th>数量</th>
                                        <th>删除</th>
                                    </tr>
                                </thead>
                                <tbody id="cart_table">
                                    <%--<tr>--%>
                                        <%--<td class=\"cart_product_img\">--%>
                                            <%--<img src="../images/多肉/多肉1.jpg" alt="Product">--%>
                                        <%--</td>--%>
                                        <%--<td class="cart_product_desc">--%>
                                            <%--<h5> 多肉</h5>--%>
                                        <%--</td>--%>
                                        <%--<td class="price">--%>
                                            <%--<span>￥21</span>--%>
                                        <%--</td>--%>
                                        <%--<td class="qty">--%>
                                            <%--<span>2</span>--%>
                                            <%--<div class="qty-btn d-flex">--%>
                                            <%--<p>2</p>--%>
                                            <%--<div class="quantity">--%>

                                            <%--<span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>--%>
                                            <%--<input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="30">--%>
                                            <%--<span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>--%>
                                            <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<p class='timetext'>" + orderItem.getCreate_time() + "</p>--%>
                                            <%--<style>.timetext{font-size:14px;}</style>--%>
                                            <%--<%--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>订单 明细</h5>
                            <ul class="summary-table">
                            	
                                <li><span>物品价格:</span> <span id="sum_integral"></span></li>
                                <li><span>运费:</span> <span>包邮</span></li>
                                <li><span>总价:</span> <span id="total_integral"></span></li>
                            </ul>
                            <div class="cart-btn mt-100">
                                <a href="/menu/shop_checkout" class="btn amado-btn w-100">下单</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                        <%--<form action="#" method="post">--%>
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
                                        <li class="nav-item">
                                            <a class="nav-link" href="/menu/shop_index">兑换物品</a>
                                        </li>
                                        <li class="nav-item active">
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

    <script src="../js/shop.js"></script>

</body>

</html>
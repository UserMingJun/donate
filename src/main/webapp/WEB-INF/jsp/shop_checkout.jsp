
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
    <title>兑换订单</title>

    
    <%--<link rel="icon" href="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/favicon.ico">--%>

    <link rel="stylesheet" type="text/css" href="../css/shop_animate.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap_shop.min.css">
    <link rel="stylesheet" type="text/css" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="../css/magnific-popup_shop.css">
    <link rel="stylesheet" type="text/css" href="../css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/core-style.css">
	
	
	<!-- 	//	买家账号kfdjqd6025@sandbox.com
			//	登录密码111111
			//	支付密码111111
  	-->
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
                    <li><a href="/menu/shop_cart">购物车</a></li>
                    <li class="active"><a href="shop_checkout.jsp">兑换订单</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <%--<div class="amado-btn-group mt-30 mb-100">--%>
                <%--<a href="login.jsp" class="btn amado-btn mb-15" id="useraction">Log In</a>--%>
                <%--<form action="ExitServlet" method="post">--%>
                	<%--&lt;%&ndash;&lt;%&ndash;%>--%>
                		<%--&lt;%&ndash;out.print("<p id='exitaction'>" + "你好，"+ Const.currentUser + "</p>");&ndash;%&gt;--%>
                	<%--&lt;%&ndash;%>&ndash;%&gt;--%>
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
            <!-- Cart Menu -->
            <%--<div class="cart-fav-search mb-100">--%>
                <%--<a href="shop_cart.jsp" class="cart-nav"><img src="http://demo.cssmoban.com/cssthemes5/twts_52_amado/img/core-img/cart.png" alt=""> Cart--%>
                    <%--<span>--%>
               <%--<%--%>
                	<%--OrderService orderService = new OrderServiceImpl();--%>
                	<%--orderItemService = new OrderItemServiceImpl();--%>
                	<%--if(Const.isLog && Const.currentOrder != null){--%>
                		<%--String order_no = Const.currentOrder.getOrder_no();--%>
                    	<%--out.println("(" + orderItemService.getProductCategory(order_no) + ")");	--%>
                	<%--}else{--%>
                		<%--out.println("(0)");--%>
                	<%--}--%>
                    <%----%>
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

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>兑换订单</h2>
                            </div>

                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-md-12 mb-3">
                                        <input type="text" class="form-control" id="name" value="" placeholder="姓名" required>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" id="number" placeholder="电话" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="email" class="form-control" id="address" placeholder="地址" value="">
                                    </div>
                                    <%--<div class="col-12 mb-3">--%>
                                        <%--<select class="w-100" id="country">--%>
                                        <%--<option value="usa">United States</option>--%>
                                        <%--<option value="uk">China</option>--%>
                                        <%--<option value="ger">Germany</option>--%>
                                        <%--<option value="fra">France</option>--%>
                                        <%--<option value="ind">India</option>--%>
                                        <%--<option value="aus">Australia</option>--%>
                                        <%--<option value="bra">Brazil</option>--%>
                                        <%--<option value="cana">Canada</option>--%>
                                    <%--</select>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-12 mb-3">--%>
                                        <%--<input type="text" class="form-control mb-3" id="street_address" placeholder="Address" value="">--%>
                                    <%--</div>--%>
                                    <%--<div class="col-12 mb-3">--%>
                                        <%--<input type="text" class="form-control" id="city" placeholder="Town" value="">--%>
                                    <%--</div>--%>
                                    <%--<div class="col-md-6 mb-3">--%>
                                        <%--<input type="text" class="form-control" id="zipCode" placeholder="Zip Code" value="">--%>
                                    <%--</div>--%>
                                    <%--<div class="col-md-6 mb-3">--%>
                                        <%--<input type="number" class="form-control" id="phone_number" min="0" placeholder="Phone No" value="">--%>
                                    <%--</div>--%>
                                    <%--<div class="col-12 mb-3">--%>
                                        <%--<textarea name="comment" class="form-control w-100" id="comment" cols="30" rows="10" placeholder="Leave a comment about your order"></textarea>--%>
                                    <%--</div>--%>

                                    <%--<div class="col-12">--%>
                                        <%--<div class="custom-control custom-checkbox d-block mb-2">--%>
                                            <%--<input type="checkbox" class="custom-control-input" id="customCheck2">--%>
                                            <%--<label class="custom-control-label" for="customCheck2">Create an accout</label>--%>
                                        <%--</div>--%>
                                        <%--<div class="custom-control custom-checkbox d-block">--%>
                                            <%--<input type="checkbox" class="custom-control-input" id="customCheck3">--%>
                                            <%--<label class="custom-control-label" for="customCheck3">Ship to a different address</label>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>订单明细</h5>
                            <ul class="summary-table">
                                <li><span>物品价格:</span> <span id="sum_integral"></span></li>
                                <li><span>运费:</span> <span>包邮</span></li>
                                <li><span>总价:</span> <span id="total_integral"></span></li>
                            </ul>

                            <%--<div class="payment-method">--%>
                                <%--<!-- Cash on delivery -->--%>
                                <%--<div class="custom-control custom-checkbox mr-sm-2">--%>
                                    <%--<input type="checkbox" class="custom-control-input" id="cod" checked>--%>
                                    <%--<label class="custom-control-label" for="cod">Cash on Delivery</label>--%>
                                <%--</div>--%>
                                <%--<!-- Paypal -->--%>
                                <%--<div class="custom-control custom-checkbox mr-sm-2">--%>
                                    <%--<input type="checkbox" class="custom-control-input" id="paypal">--%>
                                    <%--<label class="custom-control-label" for="paypal">Paypal <img class="ml-15" src="images/Alipay.jpg" alt=""></label>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <div class="cart-btn mt-100">
                                <input href="#" class="btn amado-btn w-100" type="submit" value="下单" onclick="checkOut()"></input>
                            </div>
							<%--<form name=alipayment action=alipay.trade.page.pay.jsp method=post target="_blank">--%>
                            	<%--<div id="body1" class="show" name="divcontent">--%>
									<%--<dl class="content">--%>
										<%--<input id="WIDout_trade_no" name="WIDout_trade_no" --%>
										<%--value="303030303" type="hidden" />--%>
										<%--<input id="WIDsubject" name="WIDsubject" value="测试" type="hidden" />--%>
										<%--<input id="WIDtotal_amount" name="WIDtotal_amount" --%>
											<%--value="3030303030" type="hidden" />--%>
										<%--<input id="WIDbody" name="WIDbody" value="" type="hidden" />--%>
<%--<!-- 										<dd id="btn-dd">--%>
											<%--<span class="new-btn-login-sp">--%>
												<%--<button class="new-btn-login" type="submit"--%>
													<%--style="text-align: center;">付 款</button>--%>
											<%--</span> <span class="note-help">如果您点击“付款”按钮，即表示您同意该次的执行操作。</span>--%>
										<%--</dd> -->--%>
									<%--</dl>--%>
								<%--</div>--%>
								<%--<div class="cart-btn mt-100">--%>
                                	<%--<input href="#" class="btn amado-btn w-100" type="submit" value="Checkout"></input>--%>
                            	<%--</div>--%>
							<%--</form>--%>
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
                                        <li class="nav-item">
                                            <a class="nav-link" href="/menu/shop_index">兑换物品</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/menu/shop_cart">购物车</a>
                                        </li>
                                        <li class="nav-item active">
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
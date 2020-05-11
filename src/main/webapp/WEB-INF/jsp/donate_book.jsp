
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>捐赠书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
    <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
    <meta name="author" content="FreeHTML5.co" />

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="../css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="../css/icomoon.css">
    <!-- Themify Icons-->
    <link rel="stylesheet" href="../css/themify-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="../css/bootstrap_donate.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="../css/magnific-popup.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="../css/bootstrap-datepicker.min.css">

    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="../css/style_donate.css">

    <!-- Modernizr JS -->
    <script src="../js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../js/respond.min.js"></script>
    <![endif]-->
    <script src="../js/area.js"></script>
</head>
<body>

<div class="gtco-loader"></div>

<div id="page">
    <nav class="gtco-nav" role="navigation">
        <div class="gtco-container">

            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div id="gtco-logo"><a href="/menu/index">辣排骨公益 <em>.</em></a></div>
                </div>
                <%--<div class="col-xs-8 text-right menu-1">--%>
                <%--<ul>--%>
                <%--<li><a href="destination.html">Destination</a></li>--%>
                <%--<li class="has-dropdown">--%>
                <%--<a href="#">Travel</a>--%>
                <%--<ul class="dropdown">--%>
                <%--<li><a href="#">Europe</a></li>--%>
                <%--<li><a href="#">Asia</a></li>--%>
                <%--<li><a href="#">America</a></li>--%>
                <%--<li><a href="#">Canada</a></li>--%>
                <%--</ul>--%>
                <%--</li>--%>
                <%--<li><a href="pricing.html">Pricing</a></li>--%>
                <%--<li><a href="contact.html">Contact</a></li>--%>
                <%--</ul>--%>
                <%--</div>--%>
            </div>

        </div>
    </nav>

    <header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(../images/6.jpg)">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">


                    <div class="row row-mt-15em">
                        <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                            <h1>在线预约捐赠，免费上门收书</h1>
                        </div>
                        <div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
                            <div class="form-wrap">
                                <div class="tab">

                                    <div class="tab-content">
                                        <div class="tab-content-inner active" data-content="signup">
                                            <h3>填写信息</h3>
                                            <form id="insertBookform" action="" method="post">
                                                <div class="row form-group">
                                                    <div class="col-md-12 name-number">
                                                        <label for="fullname">姓名</label>
                                                        <input type="text" id="fullname" name="fullname" class="form-control form-name">
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12 name-number">
                                                        <label for="fullnumber" class="fullnumber">手机号码</label>
                                                        <input type="text" id="fullnumber" name="fullnumber" class="form-control form-number">
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label for="activities">所在地区</label>
                                                        <select id="s_province" name="s_province" class="form-control">
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <!-- <label for="destination">Destination</label> -->
                                                        <select id="s_city" name="s_city" class="form-control">
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <!-- <label for="destination">Destination</label> -->
                                                        <select id="s_county" name="s_county" class="form-control">
                                                        </select>
                                                    </div>
                                                </div>
                                                <script type="text/javascript">_init_area();</script>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label for="address">详细地址</label>
                                                        <input type="text" id="fulladdress" name="fulladdress" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label for="activities">书本数量</label>
                                                        <select class="form-control" id="quantity" name="quantity">
                                                            <option value="5-20本">5-20本</option>
                                                            <option value="20-35本">20-35本</option>
                                                            <option value="35-50本">35-50本</option>
                                                            <option value="50本以上">50本以上</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label for="date-start">预约时间</label>
                                                        <input type="text" id="date-start" name="date-start" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <input type="button" class="btn btn-primary btn-block" value="预约" onclick="insertBook()">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </header>

    <div class="gtco-section">
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                    <h2>旧书回收现状</h2>
                    <p>为了你我，行动起来</p>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="../images/img_1.jpg" class="fh5co-card-item image-popup">
                        <figure>
                            <div class="overlay"><i class="ti-plus"></i></div>
                            <img src="../images/img_1.jpg" alt="Image" class="img-responsive">
                        </figure>
                        <div class="fh5co-text">
                            <h2>伐木严重</h2>
                            <p>我国每年天然林面积减少约40万公顷，其中大量被用来制造纸张。</p>
                            <%--<p><span class="btn btn-primary">Schedule a Trip</span></p>--%>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="../images/img_2.jpg" class="fh5co-card-item image-popup">
                        <figure>
                            <div class="overlay"><i class="ti-plus"></i></div>
                            <img src="../images/img_2.jpg" alt="Image" class="img-responsive">
                        </figure>
                        <div class="fh5co-text">
                            <h2>回收利用</h2>
                            <p>纸张属于可再生资源，可对纸张进行回收利用以达到节约资源的目的。</p>
                            <%--<p><span class="btn btn-primary">Schedule a Trip</span></p>--%>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="../images/img_3.jpg" class="fh5co-card-item image-popup">
                        <figure>
                            <div class="overlay"><i class="ti-plus"></i></div>
                            <img src="../images/img_3.jpg" alt="Image" class="img-responsive">
                        </figure>
                        <div class="fh5co-text">
                            <h2>环境维护</h2>
                            <p>节约纸张就是节约森林资源，对于环境的维护有重大作用。</p>
                            <%--<p><span class="btn btn-primary">Schedule a Trip</span></p>--%>
                        </div>
                    </a>
                </div>


                <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                    <%--<a href="../images/img_4.jpg" class="fh5co-card-item image-popup">--%>
                        <%--<figure>--%>
                            <%--<div class="overlay"><i class="ti-plus"></i></div>--%>
                            <%--<img src="../images/img_4.jpg" alt="Image" class="img-responsive">--%>
                        <%--</figure>--%>
                        <%--<div class="fh5co-text">--%>
                            <%--<h2>Sydney, Australia</h2>--%>
                            <%--<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>--%>
                            <%--<p><span class="btn btn-primary">Schedule a Trip</span></p>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>

                <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                    <%--<a href="../images/img_5.jpg" class="fh5co-card-item image-popup">--%>
                        <%--<figure>--%>
                            <%--<div class="overlay"><i class="ti-plus"></i></div>--%>
                            <%--<img src="../images/img_5.jpg" alt="Image" class="img-responsive">--%>
                        <%--</figure>--%>
                        <%--<div class="fh5co-text">--%>
                            <%--<h2>Greece, Europe</h2>--%>
                            <%--<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>--%>
                            <%--<p><span class="btn btn-primary">Schedule a Trip</span></p>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>

                <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                    <%--<a href="../images/img_6.jpg" class="fh5co-card-item image-popup">--%>
                        <%--<figure>--%>
                            <%--<div class="overlay"><i class="ti-plus"></i></div>--%>
                            <%--<img src="../images/img_6.jpg" alt="Image" class="img-responsive">--%>
                        <%--</figure>--%>
                        <%--<div class="fh5co-text">--%>
                            <%--<h2>Spain, Europe</h2>--%>
                            <%--<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>--%>
                            <%--<p><span class="btn btn-primary">Schedule a Trip</span></p>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>

            </div>
        </div>
    </div>
    <%--<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>--%>

    <div id="gtco-features">
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                    <h2>旧书处理方式</h2>
                    <p>针对回收的书籍有以下三种处理方式</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="feature-center" data-animate-effect="fadeIn">
						<span class="icon">
							<i>1</i>
						</span>
                        <h3>环保再生</h3>
                        <p>将符合标准的各类纸质书本进行回收，经过专业维护修整后，将其捐赠给全国各地贫困地区和学校。</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="feature-center" data-animate-effect="fadeIn">
						<span class="icon">
							<i>2</i>
						</span>
                        <h3>公益捐赠</h3>
                        <p>将保存良好的书籍之间捐赠给贫困地区的学生和学校。目前已有200所贫困学校已获得公益捐赠。</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="feature-center" data-animate-effect="fadeIn">
						<span class="icon">
							<i>3</i>
						</span>
                        <h3>出口第三世界国家</h3>
                        <p>将质量较好、相对合适的书本，经过专业修整后，捐助给第三世界贫困国家，让世界各角落的孩子有书可读。</p>
                    </div>
                </div>


            </div>
        </div>
    </div>


    <%--<div class="gtco-cover gtco-cover-sm" style="background-image: url(../images/img_bg_1.jpg)"  data-stellar-background-ratio="0.5">--%>
        <%--<div class="overlay"></div>--%>
        <%--<div class="gtco-container text-center">--%>
            <%--<div class="display-t">--%>
                <%--<div class="display-tc">--%>
                    <%--<h1>We have high quality services that you will surely love!</h1>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div id="gtco-counter" class="gtco-section">--%>
        <%--<div class="gtco-container">--%>

            <%--<div class="row">--%>
                <%--<div class="col-md-8 col-md-offset-2 text-center gtco-heading">--%>
                    <%--<h2>Our Success</h2>--%>
                    <%--<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="row">--%>

                <%--<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">--%>
                    <%--<div class="feature-center">--%>
                        <%--<span class="counter js-counter" data-from="0" data-to="196" data-speed="5000" data-refresh-interval="50">1</span>--%>
                        <%--<span class="counter-label">Destination</span>--%>

                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">--%>
                    <%--<div class="feature-center">--%>
                        <%--<span class="counter js-counter" data-from="0" data-to="97" data-speed="5000" data-refresh-interval="50">1</span>--%>
                        <%--<span class="counter-label">Hotels</span>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">--%>
                    <%--<div class="feature-center">--%>
                        <%--<span class="counter js-counter" data-from="0" data-to="12402" data-speed="5000" data-refresh-interval="50">1</span>--%>
                        <%--<span class="counter-label">Travelers</span>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">--%>
                    <%--<div class="feature-center">--%>
                        <%--<span class="counter js-counter" data-from="0" data-to="12202" data-speed="5000" data-refresh-interval="50">1</span>--%>
                        <%--<span class="counter-label">Happy Customer</span>--%>

                    <%--</div>--%>
                <%--</div>--%>

            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <footer id="gtco-footer" role="contentinfo">
        <div class="gtco-container">
            <div class="row row-p	b-md">

                <div class="col-md-4">
                    <div class="gtco-widget">
                        <h3>关于 我们</h3>
                        <p>“辣排骨”是一个互联网环保回收平台，开创了线上预约，线下免费上门回收旧衣的全新模式，通过互联网的方式将线上和线下打通，让用户能够更便捷的参与到环保回收行动中。平台以「为了你我，行动起来」为理念。</p>
                    </div>
                </div>

                <div class="col-md-2 col-md-push-1">
                    <div class="gtco-widget">
                        <h3></h3>
                        <ul class="gtco-footer-links">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-2 col-md-push-1">
                    <div class="gtco-widget">
                        <h3>友情链接</h3>
                        <ul class="gtco-footer-links">
                            <li><a href="http://www.chinacharityfederation.org/">中华慈善总会</a></li>
                            <li><a href="http://www.cepf.org.cn/">中华环境保护基金会</a></li>
                            <li><a href="http://www.fupin.org.cn/">中国扶贫基金会</a></li>
                            <li><a href="https://www.cydf.org.cn/">中国青少年发展基金</a></li>
                            <li><a href="https://www.cydf.org.cn/">中国红十字会</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-md-push-1">
                    <div class="gtco-widget">
                        <h3>联系我们</h3>
                        <ul class="gtco-quick-contact">
                            <li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>
                            <li><a href="#"><i class="icon-mail2"></i> info@freehtml5.co</a></li>
                            <li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
    </footer>

</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
</div>

<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="../js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="../js/bootstrap_donate.min.js"></script>
<!-- Waypoints -->
<script src="../js/jquery.waypoints.min.js"></script>
<!-- Carousel -->
<script src="../js/owl.carousel.min.js"></script>
<!-- countTo -->
<script src="../js/jquery.countTo.js"></script>

<!-- Stellar Parallax -->
<script src="../js/jquery.stellar.min.js"></script>

<!-- Magnific Popup -->
<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/magnific-popup-options.js"></script>

<!-- Datepicker -->
<script src="../js/bootstrap-datepicker.min.js"></script>


<!-- Main -->
<script src="../js/donate.js"></script>

</body>
</html>


<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/7
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>申请资助</title>
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
                            <h1>填写信息，经审核后即可获得资助</h1>
                        </div>



                        <div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
                            <div class="form-wrap">
                                <div class="tab">

                                    <div class="tab-content">
                                        <div class="card">
                                            <div class="card-body card-block">
                                                <form id="applyform" action="" method="post" enctype="multipart/form-data" class="form-horizontal">

                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="apply_name" class=" form-control-label">姓名</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="apply_name" name="apply_name" placeholder="" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="apply_number" class=" form-control-label">电话</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="apply_number" name="apply_number" placeholder="" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="apply_address" class=" form-control-label">捐赠地址</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="text" id="apply_address" name="apply_address" placeholder="" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="apply_detail" class=" form-control-label">情况说明</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <textarea style="resize:none;" name="apply_detail" id="apply_detail" rows="9" placeholder="填写真实有效地信息，将有助于尽快得到资助" class="form-control"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col col-md-3">
                                                            <label for="apply_file" class=" form-control-label">上传图片</label>
                                                        </div>
                                                        <div class="col-12 col-md-9">
                                                            <input type="file" id="apply_file" name="apply_file" class="form-control-file">
                                                            </br>
                                                            <small>*上传真实情况图片将有助于审核</small>
                                                        </div>
                                                    </div>
                                                    <div class="row form-group">
                                                        <div class="col-md-12">
                                                            <input type="button" class="btn btn-primary btn-block" onclick="submitApply()" value="预约">
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                        <%--<div class="tab-content-inner active" data-content="signup">--%>
                                            <%--<h3>填写信息</h3>--%>
                                            <%--<form action="/order/insertClothesOrder" method="post" onsubmit="return checkOrder()">--%>
                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12 name-number">--%>
                                                        <%--<label for="fullname">姓名</label>--%>
                                                        <%--<input type="text" id="fullname" name="fullname" class="form-control form-name">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>

                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12 name-number">--%>
                                                        <%--<label for="fullnumber" class="fullnumber">手机号码</label>--%>
                                                        <%--<input type="text" id="fullnumber" name="fullnumber" class="form-control form-number">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>

                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<label for="activities">所在地区</label>--%>
                                                        <%--<select id="s_province" name="s_province" class="form-control">--%>
                                                        <%--</select>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<!-- <label for="destination">Destination</label> -->--%>
                                                        <%--<select id="s_city" name="s_city" class="form-control">--%>
                                                        <%--</select>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<!-- <label for="destination">Destination</label> -->--%>
                                                        <%--<select id="s_county" name="s_county" class="form-control">--%>
                                                        <%--</select>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<script type="text/javascript">_init_area();</script>--%>
                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<label for="address">详细地址</label>--%>
                                                        <%--<input type="text" id="fulladdress" name="fulladdress" class="form-control">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<label for="activities">衣服重量</label>--%>
                                                        <%--<select class="form-control" id="weight" name="weight">--%>
                                                            <%--<option value="5kg-15kg">5kg-15kg(约18件)</option>--%>
                                                            <%--<option value="15kg-25kg">15kg-25kg(约37件)</option>--%>
                                                            <%--<option value="25kg-35kg">25kg-35kg(约60件)</option>--%>
                                                            <%--<option value="35kg-200kg">35kg-200kg(约75件)</option>--%>
                                                            <%--<option value="200kg以上">200kg以上(75件以上)</option>--%>
                                                        <%--</select>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<label for="date-start">预约时间</label>--%>
                                                        <%--<input type="text" id="date-start" name="date-start" class="form-control">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>

                                                <%--<div class="row form-group">--%>
                                                    <%--<div class="col-md-12">--%>
                                                        <%--<input type="submit" class="btn btn-primary btn-block" value="预约">--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                            <%--</form>--%>
                                        <%--</div>--%>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </header>

    <%--<div class="gtco-section">--%>
        <%--<div class="gtco-container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-8 col-md-offset-2 text-center gtco-heading">--%>
                    <%--<h2>旧衣回收现状</h2>--%>
                    <%--<p>为了你我，行动起来</p>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="row">--%>

                <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                    <%--<a href="../images/img_1.jpg" class="fh5co-card-item image-popup">--%>
                        <%--<figure>--%>
                            <%--<div class="overlay"><i class="ti-plus"></i></div>--%>
                            <%--<img src="../images/img_1.jpg" alt="Image" class="img-responsive">--%>
                        <%--</figure>--%>
                        <%--<div class="fh5co-text">--%>
                            <%--<h2>资源浪费</h2>--%>
                            <%--<p>我们每年产生2600万吨废旧纺织品综合利用率不足10%。</p>--%>
                            <%--&lt;%&ndash;<p><span class="btn btn-primary">Schedule a Trip</span></p>&ndash;%&gt;--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                    <%--<a href="../images/img_2.jpg" class="fh5co-card-item image-popup">--%>
                        <%--<figure>--%>
                            <%--<div class="overlay"><i class="ti-plus"></i></div>--%>
                            <%--<img src="../images/img_2.jpg" alt="Image" class="img-responsive">--%>
                        <%--</figure>--%>
                        <%--<div class="fh5co-text">--%>
                            <%--<h2>环保节能</h2>--%>
                            <%--<p>如果每年产生的废旧纺织品能全部得到循环利用就可以节约4800万吨原油。</p>--%>
                            <%--&lt;%&ndash;<p><span class="btn btn-primary">Schedule a Trip</span></p>&ndash;%&gt;--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="col-lg-4 col-md-4 col-sm-6">--%>
                    <%--<a href="../images/img_3.jpg" class="fh5co-card-item image-popup">--%>
                        <%--<figure>--%>
                            <%--<div class="overlay"><i class="ti-plus"></i></div>--%>
                            <%--<img src="../images/img_3.jpg" alt="Image" class="img-responsive">--%>
                        <%--</figure>--%>
                        <%--<div class="fh5co-text">--%>
                            <%--<h2>供大于求</h2>--%>
                            <%--<p>我国贫困山区旧衣卷曾需求组件降低频次大幅降低。</p>--%>
                            <%--&lt;%&ndash;<p><span class="btn btn-primary">Schedule a Trip</span></p>&ndash;%&gt;--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>


                <%--&lt;%&ndash;<div class="col-lg-4 col-md-4 col-sm-6">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="../images/img_4.jpg" class="fh5co-card-item image-popup">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<figure>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="overlay"><i class="ti-plus"></i></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<img src="../images/img_4.jpg" alt="Image" class="img-responsive">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</figure>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="fh5co-text">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h2>Sydney, Australia</h2>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p><span class="btn btn-primary">Schedule a Trip</span></p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                <%--&lt;%&ndash;<div class="col-lg-4 col-md-4 col-sm-6">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="../images/img_5.jpg" class="fh5co-card-item image-popup">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<figure>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="overlay"><i class="ti-plus"></i></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<img src="../images/img_5.jpg" alt="Image" class="img-responsive">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</figure>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="fh5co-text">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h2>Greece, Europe</h2>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p><span class="btn btn-primary">Schedule a Trip</span></p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                <%--&lt;%&ndash;<div class="col-lg-4 col-md-4 col-sm-6">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="../images/img_6.jpg" class="fh5co-card-item image-popup">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<figure>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="overlay"><i class="ti-plus"></i></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<img src="../images/img_6.jpg" alt="Image" class="img-responsive">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</figure>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="fh5co-text">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<h2>Spain, Europe</h2>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<p><span class="btn btn-primary">Schedule a Trip</span></p>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>


    <%--<div id="gtco-features">--%>
        <%--<div class="gtco-container">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-8 col-md-offset-2 text-center gtco-heading ">--%>
                    <%--<h2>旧衣物处理方式</h2>--%>
                    <%--<p>针对回收的衣物有一下三种处理方式</p>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-4 col-sm-6">--%>
                    <%--<div class="feature-center " data-animate-effect="fadeIn">--%>
						<%--<span class="icon">--%>
							<%--<i>1</i>--%>
						<%--</span>--%>
                        <%--<h3>再生加工处理</h3>--%>
                        <%--<p>一些脏、破、烂等不可能被捐赠或者无法满足出口需求的衣物，将会被用于纤维化处理或者开发成再生棉，用于制作农业大棚被，地毯原材料等，对资源进行充分循环利用。</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 col-sm-6">--%>
                    <%--<div class="feature-center " data-animate-effect="fadeIn">--%>
						<%--<span class="icon">--%>
							<%--<i>2</i>--%>
						<%--</span>--%>
                        <%--<h3>公益捐赠贫困地区</h3>--%>
                        <%--<p>向偏远地区捐赠衣物捐赠覆盖地区超500个，部分地区多次获得捐赠，超过100000人得到温暖。</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 col-sm-6">--%>
                    <%--<div class="feature-center " data-animate-effect="fadeIn">--%>
						<%--<span class="icon">--%>
							<%--<i>3</i>--%>
						<%--</span>--%>
                        <%--<h3>国际支援</h3>--%>
                        <%--<p>将较新的衣物，整理消毒后，出口至非洲、中东等地区一些非政府组织，以救济难民。</p>--%>
                    <%--</div>--%>
                <%--</div>--%>


            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>


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
    <%--<div class="col-md-8 col-md-offset-2 text-center gtco-heading ">--%>
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

    <%--<footer id="gtco-footer" role="contentinfo">--%>
    <%--<div class="gtco-container">--%>
    <%--<div class="row row-p	b-md">--%>

    <%--<div class="col-md-4">--%>
    <%--<div class="gtco-widget">--%>
    <%--<h3>关于 我们</h3>--%>
    <%--<p>“辣排骨”是一个互联网环保回收平台，开创了线上预约，线下免费上门回收旧衣的全新模式，通过互联网的方式将线上和线下打通，让用户能够更便捷的参与到环保回收行动中。平台以「为了你我，心动起来」为理念。</p>--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<div class="col-md-2 col-md-push-1">--%>
    <%--<div class="gtco-widget">--%>
    <%--<h3>友情链接</h3>--%>
    <%--<ul class="gtco-footer-links">--%>
    <%--<li><a href="http://www.chinacharityfederation.org/"> 中华慈善总会 </a></li>--%>
    <%--<li><a href="http://www.cepf.org.cn/"> 中华环境保护基金会 </a></li>--%>
    <%--<li><a href="https://www.cydf.org.cn/"> 中国青少年发展基金 </a></li>--%>
    <%--<li><a href="http://www.fupin.org.cn/"> 中国扶贫基金会 </a></li>--%>
    <%--<li><a href="https://www.redcross.org.cn/"> 中国红十字会  </a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<div class="col-md-2 col-md-push-1">--%>
    <%--<div class="gtco-widget">--%>
    <%--<h3>Hotels</h3>--%>
    <%--<ul class="gtco-footer-links">--%>
    <%--<li><a href="#">Luxe Hotel</a></li>--%>
    <%--<li><a href="#">Italy 5 Star hotel</a></li>--%>
    <%--<li><a href="#">Dubai Hotel</a></li>--%>
    <%--<li><a href="#">Deluxe Hotel</a></li>--%>
    <%--<li><a href="#">BoraBora Hotel</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--</div>--%>

    <%--<div class="col-md-3 col-md-push-1">--%>
    <%--<div class="gtco-widget">--%>
    <%--<h3>联系我们</h3>--%>
    <%--<ul class="gtco-quick-contact">--%>
    <%--<li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>--%>
    <%--<li><a href="#"><i class="icon-mail2"></i> info@freehtml5.co</a></li>--%>
    <%--<li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>--%>
    <%--</ul>--%>
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
<script src="../js/apply.js"></script>

</body>
</html>



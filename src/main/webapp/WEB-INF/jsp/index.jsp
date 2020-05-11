<%@ page import="com.hmj.entity.User" %>
<%@ page import="com.hmj.entity.Article" %>
<%@ page import="com.hmj.service.ArticleService" %>
<%@ page import="com.hmj.service.impl.ArticleServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hmj.common.Const" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/24
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>首页</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="../css/bootstrap_index.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/style_index.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <link rel="stylesheet" href="../css/flexslider_index.css" type="text/css" media="screen" property="" />
    <!-- gallery -->
    <link rel="stylesheet" href="../css/lightGallery.css" type="text/css" media="all" />
    <!-- //gallery -->
    <!-- font-awesome-icons -->
    <link href="../css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="http://fonts.googleapis.com/css?family=Gentium+Basic:400,400i,700,700i&amp;subset=latin-ext" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>

<body>
<!-- banner -->
<div class="banner">
    <div class="container">
        <div class="w3_agile_header">
            <!-- <div class="w3_ag
            ile_header_left">
                <h2>Call us for help <span>+(000) 123 456 78</span></h2>
            </div>
            <div class="agile_logo">
                <h1><a href="index.html"><span>Orphanage</span> Home</a></h1>
            </div>
            <div class="agileits_w3layouts_mail">
                <p><i class="fa fa-envelope" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></p>
            </div>
            <div class="clearfix"> </div>-->
            <div class="w3_agileits_nav">
                <nav class="wthree_nav_menu">
                    <ul>
                        <li><a href="#" class="icon icon-menu" id="btn-menu">Menu</a></li>
                    </ul>
                </nav>
                <div id="sideNav">
                    <ul>
                        <li><a href="/menu/index" class="w3_home"><span>首页</span></a></li>
                        <li><a href="#about" class="scroll w3_about"><span>关于我们</span></a></li>
                        <li><a href="#work" class="scroll w3_work"><span>数据统计</span></a></li>
                        <li><a href="#services" class="scroll w3_services"><span>捐赠</span></a></li>
                        <li><a href="#events" class="scroll w3_events"><span>资讯</span></a></li>
                        <li><a href="#gallery" class="scroll w3_gallery"><span>画廊</span></a></li>

                        <%
                            User user = (User) session.getAttribute("user");
                            if(user != null){
                                out.print("<li><a href='/menu/info' class='w3_mail'><span>订单中心</span></a></li>");
                            }else{
                                out.print("<li><a href='/menu/login' class='w3_mail'><span>登陆&注册</span></a></li>");
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
        <div class="agileinfo_banner_info">
            <h3><span>辣排骨公益</span> 让你的闲置动起来</h3>
        </div>
        <!-- <div class="agileits_grids_format">
            <div class="agileits_grid_format">
                <ul>
                    <li class="active">placerat</li>
                    <li>condimentum</li>
                    <li>quam ut tortor</li>
                </ul>
            </div>
            <div class="agileits_grid_format">
                <ul>
                    <li>Vivamus tempus</li>
                    <li>volut nisi</li>
                    <li>tempus</li>
                </ul>
            </div>
            <div class="agileits_grid_format">
                <ul>
                    <li>pellentesque</li>
                    <li>eu dictum nisl</li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div> -->
    </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom" id="about">
    <div class="container">
        <h3>真正的 <span>公益</span> 平台，让我们行动起来！ </h3>
        <p class="para_w3ls">据不完全统计，我国每年纤维加工总量约5000万吨，产生超过2000万吨废旧纺织品，
            而回收利用率不足10%，每年大量废旧衣物被焚烧或填埋，污染环境，造成资源浪费。我们提倡绿色生活，致力于将这些资源利用起来，帮助贫困地区，减少资源浪费。</p>
        <div class='film_roll_container'>
            <div id='film_roll_2'>
                <div id='fr2_0'><img src="../images/1.jpg" alt=" " class="img-responsive" /></div>
                <div id='fr2_1'><img src="../images/2.jpg" alt=" " class="img-responsive" /></div>
                <div id='fr2_2'><img src="../images/3.jpg" alt=" " class="img-responsive" /></div>
                <div id='fr2_3'><img src="../images/4.jpg" alt=" " class="img-responsive" /></div>
                <div id='fr2_4'><img src="../images/5.jpg" alt=" " class="img-responsive" /></div>
            </div>
            <a href='#' class='btn btn-primary w3l_btn' id='film_roll_2_left'><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
            <a href='#' class='btn btn-primary w3l_btn' id='film_roll_2_right'><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
        </div>
        <div class="w3_banner_bottom_service">
            <div class="col-md-4 w3_banner_bottom_service1">
                <div class="col-xs-4 w3layouts_banner_bottom_servicel">
                    <div class="agile-hvr-icon-pulse-shrink agileits_w3layouts_thumb">
                    </div>
                </div>
                <div class="col-xs-8 w3layouts_banner_bottom_servicer">
                    <h4>在线预约</h4>
                    <p>填写捐赠所需的必要信息，等待专业人员进行上门回收。</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 w3_banner_bottom_service1">
                <div class="col-xs-4 w3layouts_banner_bottom_servicel">
                    <div class="agile-hvr-icon-pulse-shrink agileits_w3layouts_gift">
                    </div>
                </div>
                <div class="col-xs-8 w3layouts_banner_bottom_servicer">
                    <h4>上门回收</h4>
                    <p>专业人员根据填写的信息进行上门回收。</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 w3_banner_bottom_service1">
                <div class="col-xs-4 w3layouts_banner_bottom_servicel">
                    <div class="agile-hvr-icon-pulse-shrink agileits_w3layouts_heart">
                    </div>
                </div>
                <div class="col-xs-8 w3layouts_banner_bottom_servicer">
                    <h4>回收完成</h4>
                    <p>回收后的物品将捐赠给需要的地方，到达减少浪费，节约资源的目的。</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- carousal-plugin -->
<script src="../js/jquery.film_roll.js"></script>
<script src="../js/index.js"></script>
<!-- //carousal-plugin -->
<!-- progress -->
<div class="wthree_progress" id="work">
    <div class="col-md-6 w3_agileits_progress_left">
        <div class="agileits_progress_left_grid">
            <img src="../images/6.jpg" alt=" " class="img-responsive" />
            <div class="agileits_progress_left_grid_pos">
                <div class="col-xs-3 w3ls_progress_left1">
                    <div class="w3ls_progress_left1_grid">
                        <%--<i class="fa fa-facebook" aria-hidden="true"></i>--%>
                        <p>旧衣回收统计</p>
                        <h4 class="counter" id="clothes_counter"></h4><h3>kg</h3>
                    </div>
                </div>
                <div class="col-xs-3 w3ls_progress_left1">
                    <div class="w3ls_progress_left1_grid">
                        <%--<i class="fa fa-twitter w3_twitter" aria-hidden="true"></i>--%>
                        <p>旧书回收统计</p>
                        <h4 class="counter" id="book_counter"></h4><h3>本</h3>
                    </div>
                </div>
                <div class="col-xs-3 w3ls_progress_left1">
                    <div class="w3ls_progress_left1_grid">
                        <%--<i class="fa fa-google-plus w3_google" aria-hidden="true"></i>--%>
                        <p>参与总用户量</p>
                        <h4 class="counter" id="user_counter"></h4><h3>人</h3>
                    </div>
                </div>
                <div class="col-xs-3 w3ls_progress_left1">
                    <div class="w3ls_progress_left1_grid">
                        <%--<i class="fa fa-linkedin w3_linkedin" aria-hidden="true"></i>--%>
                        <p>订单数量</p>
                        <h4 class="counter" id="order_counter"></h4><h3>件</h3>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 w3_agileits_progress_right">
        <h3 class="agileinfo_header">目前 <span>数据</span> 统计</h3>
        <p>以下为我站根据实际情况统计的数据</p>
    </div>
    <div class="clearfix"> </div>
</div>
<!-- //progress -->
<!-- Stats -->
<script src="../js/waypoints.min.js"></script>
<script src="../js/counterup.min.js"></script>
<script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 2000
        });
    });
</script>
<!-- //Stats -->
<!-- progress-bottom -->
<%--<div class="progress-bottom">--%>
<%--<ul id="flexiselDemo1">--%>
<%--<li>--%>
<%--<div class="w3l_progress_bottom_left">--%>
<%--<div class="w3layouts_progress-bottom box">--%>
<%--<img src="../images/7.jpg" alt=" " class="img-responsive" />--%>
<%--<div class="overbox">--%>
<%--<h4 class="title overtext"> Orphanage Home </h4>--%>
<%--<p class="tagline overtext"> Fusce venenatis sem nec justo dapibus finibus. </p>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</li>--%>
<%--<li>--%>
<%--<div class="w3l_progress_bottom_left">--%>
<%--<div class="w3layouts_progress-bottom box">--%>
<%--<img src="../images/10.jpg" alt=" " class="img-responsive" />--%>
<%--<div class="overbox">--%>
<%--<h4 class="title overtext"> Orphanage Home </h4>--%>
<%--<p class="tagline overtext"> Fusce venenatis sem nec justo dapibus finibus. </p>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</li>--%>
<%--<li>--%>
<%--<div class="w3l_progress_bottom_left">--%>
<%--<div class="w3layouts_progress-bottom box">--%>
<%--<img src="../images/9.jpg" alt=" " class="img-responsive" />--%>
<%--<div class="overbox">--%>
<%--<h4 class="title overtext"> Orphanage Home </h4>--%>
<%--<p class="tagline overtext"> Fusce venenatis sem nec justo dapibus finibus. </p>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</li>--%>
<%--<li>--%>
<%--<div class="w3l_progress_bottom_left">--%>
<%--<div class="w3layouts_progress-bottom box">--%>
<%--<img src="../images/8.jpg" alt=" " class="img-responsive" />--%>
<%--<div class="overbox">--%>
<%--<h4 class="title overtext"> Orphanage Home </h4>--%>
<%--<p class="tagline overtext"> Fusce venenatis sem nec justo dapibus finibus. </p>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<!-- //progress-bottom -->
<!-- flexisel -->
<script type="text/javascript">
    $(window).load(function() {
        $("#flexiselDemo1").flexisel({
            visibleItems: 3,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint:480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint:640,
                    visibleItems:2
                },
                tablet: {
                    changePoint:768,
                    visibleItems: 3
                }
            }
        });
    });
</script>
<script type="text/javascript" src="../js/jquery.flexisel.js"></script>
<!-- //flexisel -->
<!-- services -->
<div class="services" id="services">
    <div class="container">
        <h3 class="agileinfo_header w3layouts_header">我们提供的 <span>服务</span></h3>
        <p class="w3_services_para"><span>为了你我，行动起来</span></p>
        <div class="w3_agile_services_grids">
            <a href="/menu/donate_clothes">
                <div class="col-md-3 w3_agile_services_grid">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img"><img src="../images/1.png" alt=" " class="img-responsive" /></div>
                    </div>
                    <fieldset>
                        <legend>旧衣回收</legend>
                        我们会将捐赠所得衣物进行公益处理，捐赠给所需地区。
                    </fieldset>
                </div>
            </a>
            <a href="/menu/donate_book">
                <div class="col-md-3 w3_agile_services_grid">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img"><img src="../images/4.png" alt=" " class="img-responsive" /></div>
                    </div>
                    <fieldset>
                        <legend>旧书回收</legend>
                        我们会将捐赠所得衣物进行公益处理，捐赠给所需地区。
                    </fieldset>
                </div>
            </a>
            <a href="/menu/donate_apply">
                <div class="col-md-3 w3_agile_services_grid">
                    <div class="ih-item circle effect1 agile_services_grid">
                        <div class="spinner"></div>
                        <div class="img"><img src="../images/2.png" alt=" " class="img-responsive" /></div>
                    </div>
                    <fieldset>
                        <legend>申请资助</legend>
                        填写困难情况及捐赠信息，经核实将会获得资助。
                    </fieldset>
                </div>
            </a>
            <%--<div class="col-md-3 w3_agile_services_grid">--%>
            <%--<div class="ih-item circle effect1 agile_services_grid">--%>
            <%--<div class="spinner"></div>--%>
            <%--<div class="img"><img src="../images/3.png" alt=" " class="img-responsive" /></div>--%>
            <%--</div>--%>
            <%--<fieldset>--%>
            <%--<legend>education for children's</legend>--%>
            <%--Donec ullamcorper ipsum quis turpis scelerisque, efficitur scelerisque urna pharetra.--%>
            <%--</fieldset>--%>
            <%--</div>--%>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //services -->
<!-- about -->
<div class="about">
    <div class="col-md-6 w3_agileits_about_left">
        <div class='bar_group'>
            <h4 style="color: white; line-height: 2em;">所列申请皆由公益组织经过审核后发布，为了让大家的爱心不至于泛滥，
                我们所有公布的捐赠申请有效期为20天，请各位捐赠人按照申请需求自行联系申请人进行捐赠且该过程中产生的费用不由本组织承担。</h4>
            <%--<div class='bar_group__bar thin elastic' label='donations' value='230'></div>--%>
            <%--<div class='bar_group__bar thin elastic' label='Participations' value='130'></div>--%>
            <%--<div class='bar_group__bar thin elastic' label='Fundraise' value='160'></div>--%>
            <%--<div class='bar_group__bar thin elastic' label='Contribute' value='340'></div>--%>
        </div>
    </div>
    <div class="col-md-6 w3_agileits_about_right">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides" id="slides">
                    <%--<li>--%>
                        <%--<div class="agileits_w3layouts_about_right">--%>
                            <%--&lt;%&ndash;<img src="../images/5.png" alt=" " class="img-responsive"/>&ndash;%&gt;--%>
                            <%--<h4>联系人：Christina Mark</h4>--%>
                            <%--<h4>联系电话：13256457678</h4>--%>
                            <%--<p style="color: white">捐赠地址：甘肃省天水市张家川回族自治县上磨村四组215号</p>--%>
                            <%--<p>情况说明：间zxc.m爱神的箭。 张了机票请问解决了请问欧普阿拉斯加的--%>
                                <%--平在浪客剑心自行车吗种下了空城计怎么写从理解自行车了空间zxc.m爱神的箭。--%>
                                <%--张了机票请问解决了请问欧普阿拉斯加的--%>
                                <%--平在浪客剑心自行车吗种下了空城计怎么写从理解自行车了空间zxc.m--%>
                                <%--爱神的箭。 张了机票请问解决了请问欧普阿拉斯加的 平</p>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<div class="agileits_w3layouts_about_right">--%>
                            <%--&lt;%&ndash;<img src="../images/5.png" alt=" " class="img-responsive"/>&ndash;%&gt;--%>
                            <%--<h4>联系人：Christina Mark</h4>--%>
                            <%--<h4>联系电话：13256457678</h4>--%>
                            <%--<p>情况说明：间zxc.m爱神的箭。 张了机票请问解决了请问欧普阿拉斯加的--%>
                                <%--平在浪客剑心自行车吗种下了空城计怎么写从理解自行车了空间zxc.m爱神的箭。--%>
                                <%--张了机票请问解决了请问欧普阿拉斯加的--%>
                                <%--平在浪客剑心自行车吗种下了空城计怎么写从理解自行车了空间zxc.m--%>
                                <%--爱神的箭。 张了机票请问解决了请问欧普阿拉斯加的 平</p>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<div class="agileits_w3layouts_about_right">--%>
                            <%--&lt;%&ndash;<img src="../images/5.png" alt=" " class="img-responsive"/>&ndash;%&gt;--%>
                            <%--<h4>联系人：Christina Mark</h4>--%>
                            <%--<h4>联系电话：13256457678</h4>--%>
                            <%--<p>情况说明：间zxc.m爱神的箭。 张了机票请问解决了请问欧普阿拉斯加的--%>
                                <%--平在浪客剑心自行车吗种下了空城计怎么写从理解自行车了空间zxc.m爱神的箭。--%>
                                <%--张了机票请问解决了请问欧普阿拉斯加的--%>
                                <%--平在浪客剑心自行车吗种下了空城计怎么写从理解自行车了空间zxc.m--%>
                                <%--爱神的箭。 张了机票请问解决了请问欧普阿拉斯加的 平</p>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<div class="agileits_w3layouts_about_right">--%>
                            <%--<img src="../images/7.png" alt=" " class="img-responsive"/>--%>
                            <%--<h4>Thomas Winston</h4>--%>
                            <%--<h5>Volunteer</h5>--%>
                            <%--<p>Vivamus euismod, nisi sit amet auctor consequat, tellus metus accumsan tellus,--%>
                                <%--sed convallis leo felis feugiat sem.Pellentesque sit amet semper nisl,--%>
                                <%--at congue elit ac eros sed nibh ornare iaculis.</p>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<div class="agileits_w3layouts_about_right">--%>
                            <%--<img src="../images/6.png" alt=" " class="img-responsive"/>--%>
                            <%--<h4>Arabella</h4>--%>
                            <%--<h5>Volunteer</h5>--%>
                            <%--<p>Vivamus euismod, nisi sit amet auctor consequat, tellus metus accumsan tellus,--%>
                                <%--sed convallis leo felis feugiat sem.Pellentesque sit amet semper nisl,--%>
                                <%--at congue elit ac eros sed nibh ornare iaculis.</p>--%>
                        <%--</div>--%>
                    <%--</li>--%>

                </ul>
            </div>
        </section>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //about -->

<script src="../js/bars.js"></script>
<!-- flexSlider -->
<script defer src="../js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
    });
</script>
<!-- //flexSlider -->
<!-- events -->

<div class="events" id="events">
    <div class="container">
        <h3 class="agileinfo_header w3layouts_header">近期 <span>资讯</span></h3>
        <p class="w3_services_para"><span>为了你我行动起来</span></p>
        <div class="w3_agile_services_grids">
            <div class="col-md-4 w3_agileits_events_grid">
                <div class="wthree_events_grid">
                    <div class="wthree_events_grid1">
                        <img id="grid_img_one" src="" alt=" " class="img-responsive" />
                        <div class="agileits_event_grid_date">
                            <p id="grid_month_year_one"><span id="grid_day_one"></span></p>
                        </div>
                    </div>
                    <div class="agileinfo_events_grid1">
                        <h5><a href="#" data-toggle="modal" data-target="#myModal" id="grid_title_one"></a></h5>
                        <p id="grid_content_one"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 w3_agileits_events_grid">
                <div class="wthree_events_grid">
                    <div class="wthree_events_grid1">
                        <img id="grid_img_two" src="" alt=" " class="img-responsive" />
                        <div class="agileits_event_grid_date">
                            <p id="grid_month_year_two"><span id="grid_day_two"></span></p>
                        </div>
                    </div>
                    <div class="agileinfo_events_grid1">
                        <h5><a href="#" data-toggle="modal" data-target="#myModal1" id="grid_title_two"></a></h5>
                        <p id="grid_content_two"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 w3_agileits_events_grid">
                <div class="wthree_events_grid">
                    <div class="wthree_events_grid1">
                        <img id="grid_img_three" src="" alt=" " class="img-responsive" />
                        <div class="agileits_event_grid_date">
                            <p id="grid_month_year_three"><span id="grid_day_three"></span></p>
                        </div>
                    </div>
                    <div class="agileinfo_events_grid1">
                        <h5><a href="#" data-toggle="modal" data-target="#myModal2" id="grid_title_three"></a></h5>
                        <p id="grid_content_three"></p>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //events -->
<!-- bootstrap-pop-up -->
<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <span id="modal_title_one"></span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <img id="model_image_one" src="" alt=" " class="img-responsive" />
                    <p id="model_content_one" style="height:240px;overflow-y:auto; overflow-x:hidden"></p>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <span id="modal_title_two"></span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <img id="model_image_two" src="" alt=" " class="img-responsive" />
                    <p id="model_content_two" style="height:240px;overflow-y:auto; overflow-x:hidden"></p>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <span id="modal_title_three"></span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <img id="model_image_three" src="" alt=" " class="img-responsive" />
                    <p id="model_content_three" style="height:240px;overflow-y:auto; overflow-x:hidden"></p>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- //bootstrap-pop-up -->
<!-- subscribe -->
<!-- <div class="subscribe">
    <div class="col-md-6 w3ls_subscribe_left">
        <h3>Subscribe Us</h3>
        <form action="#" method="post">
            <input type="email" name="Email" placeholder="Email..." required="">
            <input type="submit" value="">
        </form>
    </div>
    <div class="col-md-6 w3ls_subscribe_right">
        <div class="w3l_more">
            <a href="#" class="link link--yaku">
                <span>D</span><span>o</span><span>n</span><span>a</span><span>t</span><span>e</span> <span>U</span><span>s</span>
            </a>
        </div>
    </div>
    <div class="clearfix"> </div>
</div> -->
<!-- //subscribe -->
<!-- gallery -->
<div class="gallery" id="gallery">
    <div class="container">
        <h3 class="agileinfo_header w3layouts_header">图片 <span>展示</span></h3>
        <p class="w3_services_para"><span>为了你我行动起来</span></p>
    </div>
    <div class="w3_agile_services_grids">
        <ul class="w3l_gallery_grid" id="lightGallery">
            <li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="../images/7.jpg" data-responsive-src="../images/7.jpg">
                <div class="w3_gallery_grid">
                    <div class="hovereffect">
                        <a href="#">
                            <img src="../images/7.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <p><i class="fa fa-eye" aria-hidden="true"></i></p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
            <li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="../images/8.jpg" data-responsive-src="../images/8.jpg">
                <div class="w3_gallery_grid">
                    <div class="hovereffect">
                        <a href="#">
                            <img src="../images/8.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <p><i class="fa fa-eye" aria-hidden="true"></i></p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
            <li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="../images/9.jpg" data-responsive-src="../images/9.jpg">
                <div class="w3_gallery_grid">
                    <div class="hovereffect">
                        <a href="#">
                            <img src="../images/9.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <p><i class="fa fa-eye" aria-hidden="true"></i></p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
            <li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="../images/10.jpg" data-responsive-src="../images/10.jpg">
                <div class="w3_gallery_grid">
                    <div class="hovereffect">
                        <a href="#">
                            <img src="../images/10.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <p><i class="fa fa-eye" aria-hidden="true"></i></p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
            <li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="../images/11.jpg" data-responsive-src="../images/11.jpg">
                <div class="w3_gallery_grid">
                    <div class="hovereffect">
                        <a href="#">
                            <img src="../images/11.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <p><i class="fa fa-eye" aria-hidden="true"></i></p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
            <li data-title="Orphanage Home" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="../images/12.jpg" data-responsive-src="../images/12.jpg">
                <div class="w3_gallery_grid">
                    <div class="hovereffect">
                        <a href="#">
                            <img src="../images/12.jpg" alt="" class="img-responsive" />
                            <div class="overlay">
                                <p><i class="fa fa-eye" aria-hidden="true"></i></p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<script src="../js/lightGallery.js"></script>
<script>
    $(document).ready(function() {
        $("#lightGallery").lightGallery({
            mode:"fade",
            speed:800,
            caption:true,
            desc:true,
            mobileSrc:true
        });
    });
</script>
<!-- //gallery -->
<!-- mail -->
<!-- <div class="mail" id="mail">
    <div class="container">
        <h3 class="agileinfo_header w3layouts_header">Mail <span>Us</span></h3>
        <p class="w3_services_para"><span>Nullam volutpat nisi leo eu dictum</span></p>
        <div class="w3_agile_services_grids w3_agile_mailwe_grids">
            <form action="#" method="post">
                <div class="col-md-6 w3_agile_mail_grid">
                    <span class="input input--ichiro">
                        <input class="input__field input__field--ichiro" type="text" id="input-25" placeholder=" " required="" />
                        <label class="input__label input__label--ichiro" for="input-25">
                            <span class="input__label-content input__label-content--ichiro">Your Name</span>
                        </label>
                    </span>
                    <span class="input input--ichiro">
                        <input class="input__field input__field--ichiro" type="email" id="input-26" placeholder=" " required="" />
                        <label class="input__label input__label--ichiro" for="input-26">
                            <span class="input__label-content input__label-content--ichiro">Your Email</span>
                        </label>
                    </span>
                    <span class="input input--ichiro">
                        <input class="input__field input__field--ichiro" type="text" id="input-27" placeholder=" " required="" />
                        <label class="input__label input__label--ichiro" for="input-27">
                            <span class="input__label-content input__label-content--ichiro">Your Phone Number</span>
                        </label>
                    </span>
                    <input type="submit" value="Submit">
                </div>
                <div class="col-md-6 w3_agile_mail_grid">
                    <textarea name="Message" placeholder="Your message here..." required></textarea>
                </div>
                <div class="clearfix"> </div>
            </form>
        </div>
    </div>
</div> -->
<!-- <div class="agile_map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84010033106!2d-74.25819252532891!3d40.70583163828471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1475140387172" style="border:0"></iframe>
</div> -->
<!-- //mail -->
<!-- footer -->
<div class="footer">
    <div class="container">

        <ul class="main-nav">
            <li><a href="/menu/index">首页</a><i>|</i></li>
            <li><a href="#about" class="scroll">关于我们</a><i>|</i></li>
            <li><a href="#work" class="scroll">数据统计</a><i>|</i></li>
            <li><a href="#services" class="scroll">捐赠</a><i>|</i></li>
            <li><a href="#events" class="scroll">资讯</a><i>|</i></li>
            <li><a href="#gallery" class="scroll">画廊</a><i></i></li>
        </ul>
    </div>
</div>
<!-- //footer -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- for bootstrap working -->
<script src="../js/bootstrap.min.js"></script>
<!-- //for bootstrap working -->
<!-- menu-plugin -->
<script type="text/javascript" src="../js/gnmenu.js"></script>
<!-- //menu-plugin -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>
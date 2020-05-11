<%@ page import="com.hmj.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/28
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- Title Page-->
    <title>所有文章</title>

    <!-- Fontfaces CSS-->
    <link href="../css/font-face.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="../vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../css/theme.css" rel="stylesheet" media="all">

</head>
<%
    User user = (User)session.getAttribute("user");
%>
<body class="animsition">
<div class="page-wrapper">
    <!-- HEADER MOBILE-->
    <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar">
            <div class="container-fluid">
                <div class="header-mobile-inner">
                    <%--<a class="logo" href="index.html">--%>
                        <%--<img src="images/icon/logo.png" alt="CoolAdmin" />--%>
                    <%--</a>--%>
                    <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                    </button>
                </div>
            </div>
        </div>
        <nav class="navbar-mobile">
            <div class="container-fluid">
                <ul class="navbar-mobile__list list-unstyled">
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-copy"></i>订单</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="manage.html">所有订单</a>
                            </li>
                            <li>
                                <a href="manage_finished.html">已完成订单</a>
                            </li>
                            <li>
                                <a href="manage_unfinished.html">未完成订单</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="manage_user.html">
                            <i class="fas fa-check-square"></i>用户</a>
                    </li>
                    <li  class="has-sub">
                        <a href="manage_article.html" class="js-arrow">
                            <i class="fas fa-table"></i>文章</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="manage_article.html">查看文章</a>
                            </li>
                            <li>
                                <a href="manage_add_article.html">添加文章</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="manage_apply.html">
                            <i class="fa fa-h-square"></i>申请</a>
                    </li>
                    <li>
                        <a href="manage_chart.html">
                            <i class="far fas fa-chart-bar"></i>图表</a>
                    </li>
                    <li>
                        <a href="search.html">
                            <i class="fa fa-search"></i>查找</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- END HEADER MOBILE-->

    <!-- MENU SIDEBAR-->
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
            <a href="/menu/index">
                <img src="../images/logo.png" alt="Cool Admin" />
            </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
            <nav class="navbar-sidebar">
                <ul class="list-unstyled navbar__list">
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-copy"></i>订单</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="manage.html">所有订单</a>
                            </li>
                            <li>
                                <a href="manage_finished.html">已完成订单</a>
                            </li>
                            <li>
                                <a href="manage_unfinished.html">未完成订单</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="manage_user.html">
                            <i class="fas fa-check-square"></i>用户</a>
                    </li>
                    <li class="active has-sub">
                        <a href="#" class="js-arrow">
                            <i class="fas fa-table"></i>文章</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="manage_article.html">查看文章</a>
                            </li>
                            <li>
                                <a href="manage_add_article.html">添加文章</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="manage_apply.html">
                            <i class="fa fa-h-square"></i>申请</a>
                    </li>
                    <li>
                        <a href="manage_chart.html">
                            <i class="far fas fa-chart-bar"></i>图表</a>
                    </li>
                    <li>
                        <a href="search.html">
                            <i class="fa fa-search"></i>查找</a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <!-- END MENU SIDEBAR-->

    <!-- PAGE CONTAINER-->
    <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <div class="col-lg-4">

                        </div>
                        <div class="header-button">

                            <div class="account-wrap">
                                <div class="account-item clearfix js-item-menu">

                                    <div class="content">
                                        <a class="js-acc-btn" href="#"><%=user.getName()%></a>
                                    </div>
                                    <div class="account-dropdown js-dropdown">

                                        <div class="account-dropdown__footer">
                                            <a href="/user/exit">
                                                <i class="zmdi zmdi-power"></i>退出</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- HEADER DESKTOP-->

        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="user-data m-b-30">
                        <h3 class="title-3 m-b-30">
                            <i class="fa fa-file-text"></i>文章</h3>
                        <!-- <div class="filters m-b-45">
                            <div class="rs-select2--dark rs-select2--md m-r-10 rs-select2--border">
                                <select class="js-select2" name="property">
                                    <option selected="selected">All Properties</option>
                                    <option value="">Products</option>
                                    <option value="">Services</option>
                                </select>
                                <div class="dropDownSelect2"></div>
                            </div>
                            <div class="rs-select2--dark rs-select2--sm rs-select2--border">
                                <select class="js-select2 au-select-dark" name="time">
                                    <option selected="selected">All Time</option>
                                    <option value="">By Month</option>
                                    <option value="">By Day</option>
                                </select>
                                <div class="dropDownSelect2"></div>
                            </div>
                        </div> -->
                        <div class="table-responsive table-data">
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>标题</td>
                                    <td>发布时间</td>
                                    <td>图片</td>
                                    <td>内容</td>
                                    <td class="text-right">操作</td>
                                </tr>
                                </thead>
                                <tbody id="article_info">
                                <%--<tr>--%>
                                    <%--<td>--%>
                                        <%--<div class="table-data__info">--%>
                                            <%--<h6>admin</h6>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="table-data__info">--%>
                                            <%--<h6>111111</h6>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="table-data__info">--%>
                                            <%--<h6>1111111111@qq.com</h6>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#scrollmodal">--%>
                                            <%--Scrolling--%>
                                        <%--</button>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="table-data-feature">--%>
                                            <%--<button class="item" data-toggle="tooltip" data-placement="top" title="Delete">--%>
                                                <%--<i class="zmdi zmdi-delete"></i>--%>
                                            <%--</button>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>

                                <%--</tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT-->
        <!-- END PAGE CONTAINER-->
        <!-- modal scroll -->
        <%--<div class="modal fade" id="scrollmodal" tabindex="-1" role="dialog" aria-labelledby="scrollmodalLabel" aria-hidden="true">--%>
            <%--<div class="modal-dialog modal-lg" role="document">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="modal-header">--%>
                        <%--<h5 class="modal-title" id="scrollmodalLabel">Scrolling Long Content Modal</h5>--%>
                        <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                            <%--<span aria-hidden="true">&times;</span>--%>
                        <%--</button>--%>
                    <%--</div>--%>
                    <%--<div class="modal-body">--%>
                        <%--<p>--%>
                            <%--《上海市生活垃圾管理条例》正式实行了。垃圾被分成了四大类，100多种垃圾，干的并不一定是干垃圾，湿的也并不一定是湿垃圾，你以为的可回收物也并不一定是可回收物，简直让人崩溃。虽然官方出了各种详细的垃圾分类指南，大家还是会头晕！今天旧衣回收方式小编带大家一起来了解下垃圾分类，真的没有你想得那么简单。--%>
                        <%--</p>--%>
                    <%--</div>--%>
                    <%--<div class="modal-footer">--%>
                        <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
                        <%--<button type="button" class="btn btn-primary">Confirm</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <!-- end modal scroll -->
    </div>

</div>

<!-- Jquery JS-->
<script src="../vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="../vendor/bootstrap-4.1/popper.min.js"></script>
<script src="../vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="../vendor/slick/slick.min.js">
</script>
<script src="../vendor/wow/wow.min.js"></script>
<script src="../vendor/animsition/animsition.min.js"></script>
<script src="../vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="../vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="../vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="../vendor/circle-progress/circle-progress.min.js"></script>
<script src="../vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="../vendor/chartjs/Chart.bundle.min.js"></script>
<script src="../vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="../js/main.js"></script>
<script src="../js/manage_delete.js"></script>
</body>

</html>
<!-- end document-->

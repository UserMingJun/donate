<%@ page import="com.hmj.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/28
  Time: 18:57
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
    <title>用户列表</title>

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
                    <li class="active">
                        <a href="manage_user.html">
                            <i class="fas fa-check-square"></i>用户</a>
                    </li>
                    <li class="has-sub">
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
                            <i class="zmdi zmdi-account-calendar"></i>用户</h3>
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
                                    <td>用户名</td>
                                    <td>密码</td>
                                    <td>邮箱</td>
                                    <td>权限</td>
                                    <td class="text-right">操作</td>
                                </tr>
                                </thead>
                                <tbody id="user_info">
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
                                        <%--<span class="role admin">admin</span>--%>
                                    <%--</td>--%>
                                    <%--<td>--%>
                                        <%--<div class="table-data-feature">--%>
                                            <%--<button class="item" data-toggle="tooltip" data-placement="top" title="Delete">--%>
                                                <%--<i class="zmdi zmdi-delete"></i>--%>
                                            <%--</button>--%>
                                        <%--</div>--%>
                                    <%--</td>--%>

                                <%--</tr>--%>
                                <%--<tr>--%>
                                    <%--<td>--%>
                                        <%--<div class="table-data__info">--%>
                                            <%--<h6>hmj</h6>--%>
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
                                        <%--<span class="role user">user</span>--%>
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

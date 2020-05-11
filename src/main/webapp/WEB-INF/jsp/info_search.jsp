<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/24
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.hmj.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <title>订单中心</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="../assets/vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="../assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="../assets/css/demo.css">

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <%--<style type="text/css" class="init">--%>
    <%--.right{--%>
    <%--font-size: 25px;--%>
    <%--}--%>
    <%--#light{--%>
    <%--width: 527px;--%>
    <%--float: left;--%>
    <%--}--%>
    <%--#Blight{--%>
    <%--background-color: #c8e5bc;--%>
    <%--float: right;--%>

    <%--}--%>
    <%--#example > thead > tr > th {--%>
    <%--text-align: center;--%>
    <%--}--%>
    <%--/*        #example_info{ display:none;}*/--%>
    <%--</style>--%>
    <!-- ICONS -->
    <%--<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">--%>
    <%--<link rel="icon" type="image/png" sizes="96x96" href="../assets/img/favicon.png">--%>

</head>
<%
    //    List<Order> allOrder = (List<Order>)session.getAttribute("allOrder");
    User user = (User)session.getAttribute("user");
%>
<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="/menu/index" class="top-logo">辣排骨公益</a>
        </div>
        <div class="container-fluid">
            <div class="navbar-btn">
                <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
            </div>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span><%=user.getName()%></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="lnr lnr-user"></i> <span id="integral">当前积分:</span></a></li>
                            <li><a href="/user/exit"><i class="lnr lnr-exit"></i> <span>退出登录</span></a></li>
                        </ul>
                    </li>
                    <!-- <li>
                        <a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li><a href="/menu/info"><i class="lnr lnr-file-empty"></i> <span>全部捐赠</span></a></li>
                    <li><a href="/menu/infoUnfinished" class=""><i class="lnr lnr-file-empty"></i> <span>未完成捐赠</span></a></li>
                    <li><a href="/menu/infoFinished" class=""><i class="lnr lnr-file-empty"></i> <span>完成捐赠</span></a></li>
                    <li><a href="/menu/info_shop" class=""><i class="lnr lnr-file-empty"></i> <span>商城兑换订单</span></a></li>
                    <li><a href="/menu/infoSearch" class="active"><i class="lnr lnr-file-empty"></i> <span>查询订单</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <!-- OVERVIEW -->
                <div class="panel">
                    <iframe name="kuaidi100" src="https://www.kuaidi100.com/frame/index.html" width="960" height="880" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
                </div>
                <!-- END OVERVIEW -->

            </div>
        </div>
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>

</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="../assets/vendor/jquery/jquery.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="../assets/vendor/chartist/js/chartist.min.js"></script>
<script src="../assets/scripts/klorofil-common.js"></script>
<script src="../js/info.js"></script>
<script src="../js/datagrid.js"></script>


</body>

</html>

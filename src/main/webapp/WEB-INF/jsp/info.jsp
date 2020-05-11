<%@ page import="com.hmj.entity.User" %>
<%@ page import="com.hmj.service.OrderService" %>
<%@ page import="com.hmj.service.impl.OrderServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="org.aspectj.weaver.ast.Or" %>
<%@ page import="com.hmj.entity.Order" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/20
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
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
                            <li><a href="/menu/shop_index"><i class="lnr lnr-user"></i> <span id="integral">当前积分:</span></a></li>
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
                    <li><a href="/menu/info" class="active"><i class="lnr lnr-file-empty"></i> <span>全部捐赠</span></a></li>
                    <li><a href="/menu/infoUnfinished" class=""><i class="lnr lnr-file-empty"></i> <span>未完成捐赠</span></a></li>
                    <li><a href="/menu/infoFinished" class=""><i class="lnr lnr-file-empty"></i> <span>完成捐赠</span></a></li>
                    <li><a href="/menu/info_shop" class=""><i class="lnr lnr-file-empty"></i> <span>商城兑换订单</span></a></li>
                    <li><a href="/menu/infoSearch" class=""><i class="lnr lnr-file-empty"></i> <span>查询订单</span></a></li>


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
                    <div class="panel-heading">
                        <h3 class="panel-title">全部捐赠</h3>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover" id="allordertable">
                            <%--<thead>--%>
                            <%--<tr>--%>
                                <%--<th>寄件人姓名</th>--%>
                                <%--<th>寄件人电话</th>--%>
                                <%--<th>寄件时间</th>--%>
                                <%--<th>收件地址</th>--%>
                                <%--<th>单号</th>--%>
                                <%--<th>状态</th>--%>
                            <%--</tr>--%>
                            <%--</thead>--%>
                            <%--<tbody>--%>

                            <%--<%--%>
                                <%--for (Order arr: allOrder--%>
                                     <%--) {--%>
                                    <%--out.println("<tr>");--%>
                                    <%--out.println("<td>"+ arr.getSender_name() +"</td>");--%>
                                    <%--out.println("<td>"+ arr.getSender_number() +"</td>");--%>
                                    <%--out.println("<td>"+ arr.getSender_time() +"</td>");--%>
                                    <%--out.println("<td>"+ arr.getSender_address() +"</td>");--%>
                                    <%--out.println("<td>"+ arr.getOrder_no() +"</td>");--%>
                                    <%--if (arr.getStatus() == 0){--%>
                                        <%--out.println("<td>未完成</td>");--%>
                                    <%--}else{--%>
                                        <%--out.println("<td>已完成</td>");--%>
                                    <%--}--%>
                                    <%--out.println("</tr>");--%>
                                <%--}--%>
                            <%--%>--%>
                            <%--<tr>--%>
                                <%--<td>胡明俊</td>--%>
                                <%--<td>122222222222</td>--%>
                                <%--<td>内蒙古莫力达瓦达斡尔族自治旗阿斯达撒旦</td>--%>
                                <%--<td>03/23/2020</td>--%>
                                <%--<td>9A2C83C45091C1776EA87D20DD328F9F</td>--%>
                                <%--<td>1</td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        </table>
                    </div>
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

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/22
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
%>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>登陆&注册</title>
    <link rel='stylesheet' href='..//css/font-awesome.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900&amp;subset=latin,latin-ext'>
    <link rel="stylesheet" href="../css/style_login.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="materialContainer">


    <div class="box">
        <form id="login_form_id" action="" method="post">
            <div class="title">登陆</div>

            <div class="input">
                <label for="name">用户名</label>
                <input type="text" name="name" id="name">
                <span class="spin"></span>
            </div>

            <div class="input">
                <label for="pass">密码</label>
                <input type="password" name="pass" id="pass">
                <span class="spin"></span>
            </div>

            <div class="button login">
                <button type="button" id="login_btn" onclick="login()"><span>GO</span> <i class="fa fa-check"></i></button>
            </div>
        </form>
        <a href="/user/toFindPass" class="pass-forgot">忘记密码? </a>
        <a href="/menu/index" class="pass-forgot">返回主页 </a>
    </div>

    <div class="overbox">
        <div class="material-button alt-2"><span class="shape"></span></div>

        <div class="title">注册</div>
        <form id="regist_form_id" action="" method="post">
            <div class="input">
                <label for="regname">用户名</label>
                <input type="text" name="regname" id="regname">
                <span class="spin"></span>
            </div>

            <div class="input">
                <label for="password">密码</label>
                <input type="password" name="password" id="password">
                <span class="spin"></span>
            </div>

            <div class="input">
                <label for="email">邮箱</label>
                <input type="text" name="email" id="email">
                <span class="spin"></span>
            </div>
in
            <div class="button">
                <button type="button" onclick="regist()"><span>下一步</span></button>
            </div>
        </form>

    </div>

</div>
<!-- partial -->
<script src="../js/jquery.min.js"></script>
<script  src="../js/script.js"></script>

</body>
</html>


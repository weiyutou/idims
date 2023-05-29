<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Applicator - Admin Dashboard Template</title>


    <!-- core dependcies css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pace-theme-minimal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/perfect-scrollbar.min.css">

    <!-- page css -->

    <!-- core css -->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/themify-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/app.css" rel="stylesheet">
</head>

<body>
<div class="app">
    <div class="layout bg-gradient-info">
        <div class="container">
            <div class="row full-height align-items-center">
                <div class="col-md-7 d-none d-md-block">
<%--                    <img class="img-fluid" src="${pageContext.request.contextPath}/static/picture/logo-white.png" alt="">--%>
                    <div class="m-t-15 m-l-20">
                        <h1 class="font-weight-light font-size-35 text-white">凌云速递<span style="font-size: 38px;font-weight:600;font-style: italic;color: yellowgreen">&nbsp;Faster</span></h1>
                        <p class="text-white width-70 text-opacity m-t-25 font-size-16">我的计划是一直发疯，直到快递送达<br>My plan was to go crazy until the courier arrived.Why are there bugs? I obviously didn't move anything, why can't it run for some reason? Will we be fine by itself in one night?<br>I don't want to learn Java anymore in my life, Java is all garbage, I hate involution, damn you guys do so well</p>
                        <div class="m-t-60">
                            <a href="" class="text-white text-link m-r-15">Term &amp; Conditions</a>
                            <a href="" class="text-white text-link">Privacy &amp; Policy</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card card-shadow">
                        <div class="card-body">
                            <div class="p-h-15 p-v-40">
                                <h2>登录</h2>
                                <p class="m-b-15 font-size-13" style="color: red">${msg}</p>
                                <form action="${pageContext.request.contextPath}/login" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Username" name="username">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" name="password">
                                    </div>
                                    <button class="btn btn-block btn-lg btn-gradient-success">登录</button>
                                    <div class="text-center m-t-30">
                                        <a href="" class="text-gray text-link text-opacity">忘记密码？</a>
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

<script src="${pageContext.request.contextPath}/static/js/vendor.js"></script>

<script src="${pageContext.request.contextPath}/static/js/app.min.js"></script>

<!-- page js -->

</body>

</html>
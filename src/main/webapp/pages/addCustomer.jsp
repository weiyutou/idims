<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: coli
  Date: 2023/5/28
  Time: 下午 4:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/AdminLTE.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pagination.css">
  <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/pagination.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/my.js"></script>
  <style>
    h3{
      text-align: center;
    }
  </style>
</head>
<body>
<div class="card">
  <div class="card-body">
    <div class="row">
      <div class="col-md-9" style="left: 18%;margin-top: 5%;overflow: hidden">
        <h3>添加客户信息</h3>
        <div class="p-h-10">
          <form class="m-t-15" action="${pageContext.request.contextPath}/customers/addCus" method="post">
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">公司名</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="companyName" placeholder="公司名">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">地址</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="address" placeholder="地址">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">省份</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="province" placeholder="省份">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">联系人姓名</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="contactName" placeholder="联系人姓名">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">联系人电话</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="contactPhone" placeholder="联系人电话">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">银行账户</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="bankAccount" placeholder="银行账户">
              </div>
            </div>
            <div class="form-row">
              <div class="col-sm-6">
                <div class="text-sm-right">
                  <button class="btn btn-default">关闭</button>
                  <button class="btn btn-gradient-success">提交</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>

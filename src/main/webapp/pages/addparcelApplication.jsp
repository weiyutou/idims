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
        <h3>添加快件申请单信息</h3>
        <div class="p-h-10">
          <form class="m-t-15" action="${pageContext.request.contextPath}/parcel-applications/addPar" method="post">
            <input type="text" class="form-control" hidden name="customerId" value="${USER_SESSION.id}" placeholder="客户id">
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">发件人</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="sender" placeholder="发件人">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">发件人电话</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="senderPhone" placeholder="发件人电话">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">快件名</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="parcelName" placeholder="快件名">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">运费</label>
              <div class="col-sm-10">
                <input type="text" style="pointer-events: none;background-color: #f0f0f0;" class="form-control" name="freight" value="50" placeholder="运费" id="myInput">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">发出地</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="origin" placeholder="发出地">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">收件人</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="recipient" placeholder="收件人">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">收件人电话</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="recipientPhone" placeholder="收件人电话">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label control-label">收货地址</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="deliveryAddress" placeholder="收货地址">
                <input type="text" class="form-control" name="status" placeholder="状态" value="0" hidden>
<%--                <input type="date" class="form-control" name="date" placeholder="日期" value="2023-06-06 20:16:32" hidden>--%>
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

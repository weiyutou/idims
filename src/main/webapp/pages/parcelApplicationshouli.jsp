<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: coli
  Date: 2023/5/21
  Time: 下午 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <title>Employee List</title>
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
  <script>
    function goToPage(page) {
      document.getElementById("pageInput").value = page;
      document.getElementById("searchForm").submit();
    }
  </script>
</head>
<body>
<div class="row" style="overflow: hidden">
  <div class="col-md-10" style="left: 17%;margin-top: 5%;overflow: hidden">
    <h3>快件申请表受理</h3>
    <table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">
      <tr>
        <th>快件申请号</th>
        <th>客户编号</th>
        <th>发件人</th>
        <th>发件人电话</th>
        <th>快件名</th>
        <th>运费</th>
        <th>发出地</th>
        <th>收件人</th>
        <th>收件人电话</th>
        <th>收货地址</th>
        <th>状态</th>
        <th>操作</th>
      </tr>
      <c:forEach items="${parcelApplications}" var="parcelApplication">
        <tr>
          <td>${parcelApplication.applicationId}</td>
          <td>${parcelApplication.customerId}</td>
          <td>${parcelApplication.sender}</td>
          <td>${parcelApplication.senderPhone}</td>
          <td>${parcelApplication.parcelName}</td>
          <td>${parcelApplication.freight}</td>
          <td>${parcelApplication.origin}</td>
          <td>${parcelApplication.recipient}</td>
          <td>${parcelApplication.recipientPhone}</td>
          <td>${parcelApplication.deliveryAddress}</td>
          <td>
            <c:if test="${parcelApplication.status == 0}">待受理</c:if>
            <c:if test="${parcelApplication.status == 1}">已受理</c:if>
            <c:if test="${parcelApplication.status == 2}">已送达</c:if>
          </td>
          <td>
            <c:if test="${parcelApplication.status == 0}">
              <button onclick="updateStatus(${parcelApplication.applicationId})">去受理</button>
            </c:if>
            <c:if test="${parcelApplication.status == 1}">已受理</c:if>
            <c:if test="${parcelApplication.status == 2}">已送达</c:if>
          </td>
        </tr>
      </c:forEach>
    </table>
  </div>
</div>
</body>
<script>
  function updateStatus(applicationId) {
    var data = {
      applicationId: applicationId
    };

    // 发送AJAX请求
    $.ajax({
      url: '${pageContext.request.contextPath}/parcel-applications/updateStatus1',
      type: 'POST',
      data: data,
      success: function(response) {
        // 处理成功响应
        alert('订单状态更新成功！');
        // 刷新页面或执行其他操作
        location.reload();
      },
      error: function(xhr, status, error) {
        // 处理错误响应
        alert('订单状态更新失败：' + error);
      }
    });
  }
</script>
</html>


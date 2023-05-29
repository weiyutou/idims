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
  <style>
    body{
      overflow: hidden;
    }
  </style>
</head>
<body>
<div class="row" style="overflow: hidden">
  <div class="col-md-10" style="left: 17%;margin-top: 5%;overflow: hidden">
    <h3>快件申请表信息</h3>
    <button class="btn btn-gradient-info" onclick="addCus()">新增</button>

    <form class="form-inline" action="${pageContext.request.contextPath}/emp/search" method="post">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      <input type="text" style="pointer-events: none;background-color: #f0f0f0;cursor: wait"
             class="form-control m-b-20 m-r-15" name="name" placeholder="搜索订单">
      <button type="submit" class="btn btn-gradient-success m-b-20">Submit</button>
    </form>
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
        </tr>
      </c:forEach>
    </table>

    <div>
      <form id="searchForm" action="${pageContext.request.contextPath}/parcel-applications/list" method="get">
        <label>当前页:${pageRequestDTO.page + 1}</label>
        <input type="hidden" id="pageInput" name="page" value="${pageRequestDTO.page}">
        <input type="hidden" name="size" value="8">
        <button type="button" onclick="goToPage(${pageRequestDTO.page - 1})">Previous</button>
        <button type="button" onclick="goToPage(${pageRequestDTO.page + 1})">Next</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>


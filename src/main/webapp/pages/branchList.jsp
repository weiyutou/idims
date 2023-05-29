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
  <style>
    body{
      overflow: hidden;
    }
  </style>
</head>
<body>
<div class="row" style="overflow: hidden">
  <div class="col-md-9" style="left: 18%;margin-top: 5%;overflow: hidden">
    <h3>分公司信息</h3>
    <table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">
      <tr>
        <th>分公司编号</th>
        <th>分公司名</th>
        <th>分公司经理</th>
        <th>办公电话</th>
        <th>分公司地址</th>
      </tr>
      <c:forEach items="${branches}" var="branche">
        <tr>
          <td>${branche.branchId}</td>
          <td>${branche.name}</td>
          <td>${branche.manager}</td>
          <td>${branche.officePhone}</td>
          <td>${branche.address}</td>
        </tr>
      </c:forEach>
    </table>
  </div>
</div>
</body>
</html>


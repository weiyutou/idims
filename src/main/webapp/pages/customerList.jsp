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
    <h3>客户信息</h3>
    <button class="btn btn-gradient-info" onclick="addCus()">新增</button>

    <form class="form-inline" action="${pageContext.request.contextPath}/emp/search" method="post">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      <input type="text" style="pointer-events: none;background-color: #f0f0f0;cursor: wait"
             class="form-control m-b-20 m-r-15" name="name" placeholder="搜索客户">
      <button type="submit" class="btn btn-gradient-success m-b-20">Submit</button>
    </form>
    <table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">
      <tr>
        <th>客户编号</th>
        <th>公司名</th>
        <th>地址</th>
        <th>省份</th>
        <th>联系人姓名</th>
        <th>联系人电话</th>
        <th>银行账户</th>
        <th>操作</th>
      </tr>
      <c:forEach items="${customers}" var="customer">
        <tr>
          <td>${customer.customerId}</td>
          <td>${customer.companyName}</td>
          <td>${customer.address}</td>
          <td>${customer.province}</td>
          <td>${customer.contactName}</td>
          <td>${customer.contactPhone}</td>
          <td>${customer.bankAccount}</td>
          <td>
            <c:if test="${USER_SESSION.role =='经理'}">
              <button onclick="editCus(${customer.customerId})">修改</button>
              <button onclick="deleteCus(${customer.customerId})">删除</button>
            </c:if>
          </td>
        </tr>
      </c:forEach>
    </table>
  </div>
</div>
<script>
  function deleteCus(customerId) {
    if (confirm("确定要删除该客户吗？")) {
      // 发送删除请求到后端
      var xhr = new XMLHttpRequest();
      xhr.open("POST", "${pageContext.request.contextPath}/customers/deleteCus", true);
      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
          // 处理删除成功后的逻辑，例如刷新数据或页面
          location.reload();
        }
      };
      xhr.send("customerId=" + customerId);
    }
  }
  function editEmployee(customerId) {
    console.log("拿到了id"+customerId);
    // 根据唯一标识，跳转到修改页面，并将员工ID作为参数传递
    location.href = "${pageContext.request.contextPath}/customers/editCus?customerId=" + customerId;
  }
  function addCus() {
    location.href = "${pageContext.request.contextPath}/pages/addCustomer.jsp";
  }
</script>
</body>
</html>


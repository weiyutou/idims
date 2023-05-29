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
    body{
      overflow: hidden;
    }
    h3{
      text-align: center;
    }
  </style>
</head>
<body>
      <div class="row" style="overflow: hidden">
        <div class="col-md-9" style="left: 18%;margin-top: 5%;overflow: hidden">
          <h3>员工信息</h3>
          <button class="btn btn-gradient-info" onclick="addEmp()">新增</button>

          <form class="form-inline" action="${pageContext.request.contextPath}/emp/search" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            <input type="text" class="form-control m-b-20 m-r-15" name="name" placeholder="搜索员工">
            <button type="submit" class="btn btn-gradient-success m-b-20">Submit</button>
          </form>

                <table id="dataList" class="table table-bordered table-striped table-hover dataTable text-center">
                  <tr>
                    <th>员工编号</th>
                    <th>员工姓名</th>
                    <th>岗位</th>
                    <th>薪资</th>
                    <th>电话</th>
                    <th>地址</th>
                    <th>分公司名</th>
                    <th>操作</th>
                  </tr>
                  <c:forEach items="${employees}" var="employee">
                    <tr>
                      <td>${employee.employeeId}</td>
                      <td>${employee.name}</td>
                      <td>${employee.position}</td>
                      <td>${employee.salary}</td>
                      <td>${employee.phoneNumber}</td>
                      <td>${employee.homeAddress}</td>
                      <td>
                        <c:if test="${employee.branchId == 1}">上海分公司</c:if>
                        <c:if test="${employee.branchId == 2}">北京分公司</c:if>
                        <c:if test="${employee.branchId == 3}">南宁分公司</c:if>
                      </td>
                      <td>
                        <c:if test="${USER_SESSION.role =='经理'}">
                          <button onclick="editEmployee(${employee.employeeId})">修改</button>
                          <button onclick="deleteEmployee(${employee.employeeId})">删除</button>
                        </c:if>
                      </td>
                    </tr>
                  </c:forEach>
                </table>
</div>
</div>
      <script>
        function deleteEmployee(employeeID) {
          if (confirm("确定要删除该员工吗？")) {
            // 发送删除请求到后端
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "${pageContext.request.contextPath}/emp/deleteEmp", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
              if (xhr.readyState === 4 && xhr.status === 200) {
                // 处理删除成功后的逻辑，例如刷新数据或页面
                location.reload();
              }
            };
            xhr.send("employeeID=" + employeeID);
          }
        }
        function editEmployee(employeeId) {
          console.log("拿到了id"+employeeId);
          // 根据唯一标识，跳转到修改页面，并将员工ID作为参数传递
          location.href = "${pageContext.request.contextPath}/emp/editEmp?employeeId=" + employeeId;
        }
        function addEmp() {
          location.href = "${pageContext.request.contextPath}/pages/addEmployee.jsp";
        }
      </script>
</body>
</html>


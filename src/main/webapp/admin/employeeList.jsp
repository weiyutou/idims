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
  <style>
    *{
      margin: 0;
      padding: 0;
    }
    nav {
      background-color: #f1f1f1;
    }

    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    li {
      display: inline-block;
      margin-right: 10px;
    }

    a {
      display: block;
      padding: 10px;
      text-decoration: none;
      color: #333;
    }

    a:hover {
      background-color: #ddd;
    }

  </style>
</head>
<body>
<nav>
  <ul>
    <li><a href="">主页</a></li>
    <li><a href="${pageContext.request.contextPath}/branch/selectBranch">分公司信息</a></li>
    <li><a href="${pageContext.request.contextPath}/employees/list">员工信息</a></li>
    <li><a href="">客户信息</a></li>
    <li><a href="">快件信息</a></li>
    <li><a href="">调度表</a></li>
    <li><a href=""> 欢迎，${USER_SESSION.username}</a></li>
    <li><a href="${pageContext.request.contextPath}/logout">
      <span class="hidden-xs">注销</span>
    </a></li>
  </ul>
</nav>
<h1>Employee List</h1>
<span onclick="addEmployee()" style="background-color: #0d6aad;padding: 5px;margin-left: 15px;cursor: pointer;color: whitesmoke">添加</span>
<table>
  <tr>
    <th>员工编号</th>
    <th>员工姓名</th>
    <th>岗位</th>
    <th>薪资</th>
    <th>电话</th>
    <th>地址</th>
<%--    <th>分公司编号</th>--%>
    <th>分公司名</th>
  </tr>
  <c:forEach items="${employees}" var="employee">
    <tr>
      <td>${employee.employeeId}</td>
      <td>${employee.name}</td>
      <td>${employee.position}</td>
      <td>${employee.salary}</td>
      <td>${employee.phone}</td>
      <td>${employee.address}</td>
      <td>
        <c:if test="${employee.branchId == 1}">张氏集团</c:if>
        <c:if test="${employee.branchId == 2}">海王公司</c:if>
        <c:if test="${employee.branchId == 3}">蟹黄堡</c:if>
      </td>
    </tr>
  </c:forEach>
</table>
<script>
  function addEmployee() {

  }
</script>
</body>
</html>

